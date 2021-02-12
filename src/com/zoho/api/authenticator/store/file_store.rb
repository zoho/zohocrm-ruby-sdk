require 'csv'

require_relative 'token_store'
require_relative '../../../crm/api/util/constants'

module Store
  # This class stores the user token details to the file.
  class FileStore < TokenStore
    attr_accessor :file_path

    # Creates an FileStore class instance with the specified parameters.
    # @param filePath A String containing the absolute file path to store tokens.
    # @raise Exception
    def initialize(file_path)
      @file_path = file_path

      unless File.exist? @file_path
        File.new(@file_path, 'w')
        @csv_file = CSV.open(@file_path, 'a', write_headers: true, headers: [Constants::USER_MAIL, Constants::CLIENT_ID, Constants::REFRESH_TOKEN, Constants::ACCESS_TOKEN, Constants::GRANT_TOKEN, Constants::EXPIRY_TIME])
      end
      @csv_file = CSV.open(@file_path, 'a')
    end

    def get_token(user, token)
      if token.is_a? Authenticator::OAuthToken
        file_contents = CSV.read(@file_path)

        grant_token = token.grant_token

        refresh_token = token.refresh_token

        client_id = token.client_id

        user_email = user.email

        if user_email.nil?
          raise SDKException.new(Constants::USER_MAIL_NULL_ERROR, Constants::USER_MAIL_NULL_ERROR_MESSAGE)
        end

        file_contents.each do |row|
          token_check = grant_token.nil? ? refresh_token == row[2] : grant_token == row[4]

          if (row[0] == user_email) && (row[1] == client_id) && token_check
            token.refresh_token = row[2]

            token.access_token = row[3]

            token.expires_in = row[5]
            return token
          end
        end
      end
      nil
    rescue StandardError => e
      raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKEN_FILE_ERROR, nil, e)
    end

    def get_tokens
      tokens = []
      file_contents = CSV.table(@file_path)
      file_contents.each do |row|
        unless row == @csv_file.header_row?
          token_type = nil
          token_value = nil
          if !row[4].nil? && row[4].length.positive?
            token_type = TokenType::GRANT
            token_value = row[4]
          else
            token_type = TokenType::REFRESH
            token_value = row[2]
          end

          token = Authenticator::OAuthToken.new(row[1], nil, token_value, token_type)

          token.user_mail = row[0]

          token.refresh_token = row[2]

          token.access_token = row[3]

          token.expires_in = row[5]

          tokens.push(token)
        end
      end

      tokens
    rescue StandardError => e
      raise SDKException.new(Constants::TOKEN_STORE, Constants::GET_TOKENS_FILE_ERROR, nil, e)
    end

    def save_token(user, token)
      if token.is_a? Authenticator::OAuthToken

        token.user_mail = user.email
        delete_token(token)
        values_list = []

        values_list.push(user.email)

        values_list.push(token.client_id)

        values_list.push(token.refresh_token)

        values_list.push(token.access_token)

        values_list.push(token.grant_token)

        values_list.push(token.expires_in)
      end
      @csv_file = CSV.open(@file_path, 'a') if @csv_file.closed?
      @csv_file << values_list
    rescue StandardError => e
      raise SDKException.new(Constants::TOKEN_STORE, Constants::SAVE_TOKEN_FILE_ERROR, nil, e)
    ensure
      @csv_file.close
    end

    def delete_token(token)
      if token.is_a? Authenticator::OAuthToken
        grant_token = token.grant_token

        refresh_token = token.refresh_token

        client_id = token.client_id

        user_email = token.user_mail

        if user_email.nil?
          raise SDKException.new(Constants::USER_MAIL_NULL_ERROR, Constants::USER_MAIL_NULL_ERROR_MESSAGE)
        end

        table = CSV.table(@file_path)

        table.delete_if do |row|
          unless row == @csv_file.header_row?
            token_check = grant_token.nil? ? refresh_token == row[:refresh_token] : grant_token == row[:grant_token]

            row[:user_mail] == user_email and row[:client_id] == client_id and token_check
          end
        end

        File.open(@file_path, 'w') do |f|
          f.write(table.to_csv)
        end
      end
    rescue StandardError => e
      raise SDKException.new(Constants::TOKEN_STORE, Constants::DELETE_TOKEN_FILE_ERROR, nil, e)
    end

    def delete_tokens
      table = CSV.table(@file_path)

      table.delete_if do |row|
        true unless row == @csv_file.header_row?
      end

      File.open(@file_path, 'w') do |f|
        f.write(table.to_csv)
      end
    rescue StandardError => e
      raise SDKException.new(Constants::TOKEN_STORE, Constants::DELETE_TOKENS_FILE_ERROR, nil, e)
    end
  end
end
