require 'mysql2'
require_relative 'token_store'
require_relative '../oauth_token'
require_relative '../../../crm/api/util/constants'

module Store
  # This class stores the user token details to the MySQL DataBase.
  class DBStore < TokenStore
    attr_accessor :user_name, :password, :port_number, :host, :database_name

    # Creates an DBStore class instance with the specified parameters.
    # @param host [string] A String containing the DataBase host name.
    # @param database_name A String containing the DataBase name.
    # @param user_name A String containing the DataBase user name.
    # @param password A String containing the DataBase password.
    # @param port_number A String containing the DataBase port number.
    def initialize(host = nil, database_name = nil, user_name = nil, password = nil, port_number = nil)
      @host = host.nil? ? Constants::MYSQL_HOST : host

      @database_name = database_name.nil? ? Constants::MYSQL_DATABASE_NAME : database_name

      @user_name = user_name.nil? ? Constants::MYSQL_USER_NAME : user_name

      @password = password.nil? ? '' : password

      @port_number = port_number.nil? ? Constants::MYSQL_PORT_NUMBER : port_number
    end

    def get_token(user, token)
      con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)

      query = construct_db_query(user.email, token, false)

      rs = con.query(query)

      con.close

      rs.each do |row|
        oauthtoken = token

        oauthtoken.access_token = row[Constants::ACCESS_TOKEN]

        oauthtoken.expires_in = row[Constants::EXPIRY_TIME]

        oauthtoken.refresh_token = row[Constants::REFRESH_TOKEN]

        return oauthtoken
      end
      nil
    rescue Mysql2::Error => e
      raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKEN_DB_ERROR, nil, e)
    end

    def save_token(user, token)
      con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)
      if token.is_a? Authenticator::OAuthToken
        query = "insert into oauthtoken(user_mail,client_id,refresh_token,access_token,grant_token,expiry_time) values ('#{user.email}','#{token.client_id}','#{token.refresh_token}','#{token.access_token}','#{token.grant_token}','#{token.expires_in}')"
        token.user_mail = user.email
        delete_token(token)
        con.query(query)
      end

      con.close
    rescue Mysql2::Error => e
      raise SDKException.new(Constants::TOKEN_STORE, Constants::SAVE_TOKEN_DB_ERROR, nil, e)
    end

    def delete_token(token)
      con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)
      if token.is_a? Authenticator::OAuthToken
        query = construct_db_query(token.user_mail, token, true)

        con.query(query)
      end

      con.close
    rescue Mysql2::Error => e
      raise SDKException.new(Constants::TOKEN_STORE, Constants::DELETE_TOKEN_DB_ERROR, nil, e)
    end

    def delete_tokens
      con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)

      query = 'delete from oauthtoken'

      con.query(query)

      con.close
    rescue Mysql2::Error => e
      raise SDKException.new(Constants::TOKEN_STORE, Constants::DELETE_TOKENS_DB_ERROR, nil, e)
    end

    def get_tokens
      tokens = []
      con = Mysql2::Client.new(host: @host, username: @user_name, password: @password, database: @database_name, port: @port_number)

      query = 'select * from oauthtoken;'

      rs = con.query(query)

      con.close

      rs.each do |row|
        token_type = nil
        token_value = nil
        if !row[Constants::GRANT_TOKEN].nil? && row[Constants::GRANT_TOKEN].length.positive?
          token_type = TokenType::GRANT
          token_value = row[Constants::GRANT_TOKEN]
        else
          token_type = TokenType::REFRESH
          token_value = row[Constants::REFRESH_TOKEN]
        end

        oauthtoken = Authenticator::OAuthToken.new(row[Constants::CLIENT_ID], nil, token_value, token_type)

        oauthtoken.id = row[Constants::ID]

        oauthtoken.user_mail = row[Constants::USER_MAIL]

        oauthtoken.access_token = row[Constants::ACCESS_TOKEN]

        oauthtoken.expires_in = row[Constants::EXPIRY_TIME]

        oauthtoken.refresh_token = row[Constants::REFRESH_TOKEN]

        tokens.push(oauthtoken)
      end
      tokens
    rescue Mysql2::Error => e
      raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKENS_DB_ERROR, nil, e)
    end

    def construct_db_query(email, token, is_delete)
      raise SDKException.new(Constants::USER_MAIL_NULL_ERROR, Constants::USER_MAIL_NULL_ERROR_MESSAGE) if email.nil?

      query = is_delete ? 'delete from ' : 'select * from '

      query += 'oauthtoken ' + "where user_mail='#{email}' and client_id='#{token.client_id}' and "

      query += if token.grant_token.nil?
                 "refresh_token='#{token.refresh_token}'"
               else
                 "grant_token='#{token.grant_token}'"
               end

      query
    end
  end
end
