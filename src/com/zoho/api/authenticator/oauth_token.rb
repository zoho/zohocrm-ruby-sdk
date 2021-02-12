require 'uri'
require 'net/http'
require 'json'
require 'monitor'

require_relative 'token'
require_relative '../../crm/api/util/constants'
require_relative '../logger/sdk_logger'
require_relative '../../crm/api/exception/sdk_exception'

module Authenticator
  # This class gets and refreshes the tokens based on the expiry time.
  class OAuthToken < Token
    @@sync_lock = Monitor.new

    attr_accessor :client_id, :client_secret, :redirect_url, :grant_token, :refresh_token, :access_token, :expires_in, :user_mail, :id

    # Creates an OAuthToken class instance with the specified parameters.
    # @param client_id [string] A String containing the OAuth client id.
    # @param client_secret [string] A String containing the OAuth client secret.
    # @param redirect_url [string]  A String containing the OAuth redirect URL.
    # @param token [string]  A String containing the REFRESH/GRANT token.
    # @param type A TokenType module variable containing the type of given token.
    def initialize(client_id, client_secret, token, type, redirect_url = nil)
      error = {}

      unless client_id.is_a?(String)
        error[Constants::ERROR_HASH_FIELD] = Constants::CLIENT_ID

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = String

        error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

        raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)

      end

      unless client_secret.nil? || client_secret.is_a?(String)
        error[Constants::ERROR_HASH_FIELD] = Constants::CLIENT_SECRET

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = String

        error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

        raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)

      end

      unless token.is_a?(String)
        error[Constants::ERROR_HASH_FIELD] = Constants::TOKEN

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = String

        error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

        raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)

      end

      unless TokenType::REFRESH.to_s.equal?(TokenType.const_get(type.to_s)) || TokenType::GRANT.to_s.equal?(TokenType.const_get(type.to_s))
        error[Constants::ERROR_HASH_FIELD] = Constants::TYPE

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = Constants::EXPECTED_TOKEN_TYPES

        error[Constants::ERROR_HASH_CLASS] = OAuthToken.class

        raise SDKException.new(Constants::INPUT_ERROR, nil, error, nil)
      end

      @client_id = client_id

      @client_secret = client_secret

      @redirect_url = redirect_url

      @refresh_token = (type == TokenType::REFRESH) ? token : nil

      @grant_token = (type == TokenType::GRANT) ? token : nil
    end

    def authenticate(url_connection)
      @@sync_lock.synchronize do
        initializer = Initializer.get_initializer
        store = initializer.store

        user = initializer.user

        oauth_token = initializer.store.get_token(user, self)

        token = nil

        if oauth_token.nil?
          token = @refresh_token.nil? ? generate_access_token(user, store).access_token : refresh_access_token(user, store).access_token
        elsif oauth_token.expires_in.to_f - get_current_time_in_millis < 5000
          SDKLog::SDKLogger.info(Constants::REFRESH_TOKEN_MESSAGE)
          token = oauth_token.refresh_access_token(user, store).access_token
        else
          token = oauth_token.access_token
        end

        url_connection.headers[Constants::AUTHORIZATION] = Constants::OAUTH_HEADER_PREFIX + token
      end
    end

    def remove
      Initializer.get_initializer.store.delete_token(self)
      true
    rescue StandardError
      false
    end

    def generate_access_token(user, store)
      json_body = {}

      json_body[Constants::CLIENT_ID] = @client_id

      json_body[Constants::CLIENT_SECRET] = @client_secret

      json_body[Constants::REDIRECT_URI] = @redirect_url

      json_body[Constants::GRANT_TYPE] = Constants::GRANT_TYPE_AUTH_CODE

      json_body[Constants::CODE] = @grant_token

      response = get_response_from_server(json_body)

      begin
        store.save_token(user, parse_response(response))
      rescue SDKException => e
        raise e
      rescue StandardError => e
        raise SDKException.new(nil, Constants::SAVE_TOKEN_ERROR, nil, e)
      end
      self
    end

    def refresh_access_token(user, store)
      json_body = {}

      json_body[Constants::CLIENT_ID] = @client_id

      json_body[Constants::CLIENT_SECRET] = @client_secret

      json_body[Constants::REDIRECT_URI] = @redirect_url

      json_body[Constants::GRANT_TYPE] = Constants::REFRESH_TOKEN

      json_body[Constants::REFRESH_TOKEN] = @refresh_token

      response = get_response_from_server(json_body)

      begin
        store.save_token(user, parse_response(response))
      rescue SDKException => e
        raise e
      rescue StandardError => e
        raise SDKException.new(nil, Constants::SAVE_TOKEN_ERROR, nil, e)
      end
      self
    end

    def parse_response(response)
      response_json = JSON.parse(response)

      unless response_json.key? Constants::ACCESS_TOKEN
        raise SDKException.new(Constants::INVALID_CLIENT_ERROR, response_json[Constants::ERROR_KEY], nil, nil)
      end

      @access_token = response_json[Constants::ACCESS_TOKEN]

      @expires_in = get_token_expiry_time(response_json)

      @refresh_token = response_json[Constants::REFRESH_TOKEN] if response_json.key? Constants::REFRESH_TOKEN
      self
    end

    def get_response_from_server(json_body)
      accounts_url = Initializer.get_initializer.environment.accounts_url

      url = URI(accounts_url)

      http = Net::HTTP.new(url.host, url.port)

      http.use_ssl = true

      request = Net::HTTP::Post.new(url.request_uri)

      request.set_form(json_body, Constants::APPLICATION_FORM_URLENCODED)

      response = http.request(request)

      response.body
    rescue StandardError => e
      raise SDKException.new(nil, nil, nil, e)
    end

    def get_token_expiry_time(response_json)
      expires_in = response_json[Constants::EXPIRES_IN]

      expires_in *= 1000 unless response_json.key? Constants::EXPIRES_IN_SEC

      expires_in += get_current_time_in_millis

      expires_in
    end

    def get_current_time_in_millis
      (Time.now.to_f * 1000).to_i
    end
  end
end

# This module contains different types of token.
module TokenType
  GRANT = 'GRANT'.freeze
  REFRESH = 'REFRESH'.freeze
end
