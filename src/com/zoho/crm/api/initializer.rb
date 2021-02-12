require 'uri'
require 'net/http'
require 'cgi'
require 'json'
require_relative '../../api/logger/sdk_logger'
require_relative 'util/constants'

# This class to initialize Zoho CRM SDK.
class Initializer
  attr_accessor :json_details, :user, :environment, :store, :token, :initializer, :local, :sdk_config, :resources_path, :request_proxy

  @@json_details = nil

  Thread.current['initi'] = nil

  def self.json_details
    @@json_details
  end

  def self.initialize(user, environment, token, store, sdk_config, resources_path, log = nil, request_proxy = nil)
    error = {}

    require_relative 'user_signature'

    unless user.is_a?(UserSignature)
      error[Constants::ERROR_HASH_FIELD] = 'user'

      error[Constants::ERROR_HASH_EXPECTED_TYPE] = UserSignature

      raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::INITIALIZATION_EXCEPTION, error, nil)

    end

    require_relative '../../crm/api/dc/datacenter'

    unless environment.is_a?(DC::DataCenter::Environment)
      error[Constants::ERROR_HASH_FIELD] = 'environment'

      error[Constants::ERROR_HASH_EXPECTED_TYPE] = DC::DataCenter::Environment

      raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::INITIALIZATION_EXCEPTION, error, nil)

    end

    require_relative '../../api/authenticator/token'

    unless token.is_a?(Authenticator::Token)
      error[Constants::ERROR_HASH_FIELD] = 'token'

      error[Constants::ERROR_HASH_EXPECTED_TYPE] = Authenticator::Token

      raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::INITIALIZATION_EXCEPTION, error, nil)

    end

    require_relative '../../api/authenticator/store/token_store'

    unless store.is_a?(Store::TokenStore)
      error[Constants::ERROR_HASH_FIELD] = 'store'

      error[Constants::ERROR_HASH_EXPECTED_TYPE] = Store::TokenStore

      raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::INITIALIZATION_EXCEPTION, error, nil)

    end

    require_relative 'sdk_config'

    unless sdk_config.is_a?(SDKConfig)
      error[Constants::ERROR_HASH_FIELD] = 'sdk_config'

      error[Constants::ERROR_HASH_EXPECTED_TYPE] = SDKConfig

      raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::INITIALIZATION_EXCEPTION, error, nil)

    end

    if resources_path.nil? || resources_path.empty?
      raise SDKException.new(Constants::INITIALIZATION_ERROR, Constants::RESOURCE_PATH_ERROR_MESSAGE, nil, nil)
    end

    log = SDKLog::Log.initialize(Levels::INFO, File.join(Dir.pwd, Constants::LOGFILE_NAME)) if log.nil?

    SDKLog::SDKLogger.initialize(log)

    @@initializer = Initializer.new

    @@initializer.user = user

    @@initializer.environment = environment

    @@initializer.sdk_config = sdk_config

    @@initializer.token = token

    @@initializer.store = store

    @@initializer.resources_path = resources_path

    @@initializer.request_proxy = request_proxy

    @@json_details = get_JSONDetails

    SDKLog::SDKLogger.info(Constants::INITIALIZATION_SUCCESSFUL + @@initializer.to_s)
  rescue SDKException => e
    raise e
  rescue StandardError => e
    raise SDKException.new(nil, Constants::INITIALIZATION_ERROR, nil, e)
  end

  def self.get_JSONDetails
    JSON.parse(File.open(File.join(File.dirname(File.expand_path(__FILE__)), '../../../../' + Constants::JSON_DETAILS_FILE_PATH)).read)
  rescue StandardError => e
    raise SDKException.new(nil, Constants::EXCEPTION_JSONDETAILS, nil, e)
  end

  def self.get_initializer
    return Thread.current['initi'] unless Thread.current['initi'].nil?

    @@initializer
  end

  def self.switch_user(user, environment, token, sdk_config, request_proxy = nil)
    require_relative 'user_signature'

    unless user.is_a?(UserSignature)
      error[Constants::ERROR_HASH_FIELD] = 'user'

      error[Constants::ERROR_HASH_EXPECTED_TYPE] = UserSignature

      raise SDKException.new(Constants::SWITCH_USER_ERROR, Constants::SWITCH_USER_EXCEPTION, error, nil)

    end

    require_relative '../../crm/api/dc/datacenter'

    unless environment.is_a?(DC::DataCenter::Environment)
      error[Constants::ERROR_HASH_FIELD] = 'environment'

      error[Constants::ERROR_HASH_EXPECTED_TYPE] = DC::DataCenter::Environment

      raise SDKException.new(Constants::SWITCH_USER_ERROR, Constants::SWITCH_USER_EXCEPTION, error, nil)

    end

    require_relative '../../api/authenticator/token'

    unless token.is_a?(Authenticator::Token)
      error[Constants::ERROR_HASH_FIELD] = 'token'

      error[Constants::ERROR_HASH_EXPECTED_TYPE] = Authenticator::Token

      raise SDKException.new(Constants::SWITCH_USER_ERROR, Constants::SWITCH_USER_EXCEPTION, error, nil)

    end

    require_relative 'sdk_config'

    unless sdk_config.is_a?(SDKConfig)
      error[Constants::ERROR_HASH_FIELD] = 'sdk_config'

      error[Constants::ERROR_HASH_EXPECTED_TYPE] = SDKConfig

      raise SDKException.new(Constants::SWITCH_USER_ERROR, Constants::SWITCH_USER_EXCEPTION, error, nil)

    end

    initializer = Initializer.new

    initializer.user = user

    initializer.environment = environment

    initializer.sdk_config = sdk_config

    initializer.token = token

    initializer.store = @@initializer.store

    initializer.resources_path = @@initializer.resources_path

    initializer.request_proxy = request_proxy

    Thread.current['initi'] = initializer

    SDKLog::SDKLogger.info(Constants::INITIALIZATION_SWITCHED + initializer.to_s)
  end

  def to_s
    Constants::FOR_EMAIL_ID + Initializer.get_initializer.user.email + Constants::IN_ENVIRONMENT + Initializer.get_initializer.environment.url + '.'
  end
end
