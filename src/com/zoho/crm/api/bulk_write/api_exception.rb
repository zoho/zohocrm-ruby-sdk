require_relative '../util/choice'
require_relative '../util/model'

module BulkWrite
  require_relative 'action_response'
  require_relative 'response_wrapper'
  require_relative 'response_handler'
  class APIException
    include Util::Model
    include ActionResponse
    include ResponseWrapper
    include ResponseHandler

    # Creates an instance of APIException
    def initialize
      @code = nil
      @message = nil
      @status = nil
      @details = nil
      @error_message = nil
      @error_code = nil
      @x_error = nil
      @info = nil
      @x_info = nil
      @http_status = nil
      @key_modified = Hash.new
    end

      # The method to get the code
      # @return An instance of Util::Choice

    def code
      @code
    end

      # The method to set the value to code
      # @param code [Util::Choice] An instance of Util::Choice

    def code=(code)
      if code!=nil and !code.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: code EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @code = code
      @key_modified['code'] = 1
    end

      # The method to get the message
      # @return An instance of Util::Choice

    def message
      @message
    end

      # The method to set the value to message
      # @param message [Util::Choice] An instance of Util::Choice

    def message=(message)
      if message!=nil and !message.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: message EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @message = message
      @key_modified['message'] = 1
    end

      # The method to get the status
      # @return An instance of Util::Choice

    def status
      @status
    end

      # The method to set the value to status
      # @param status [Util::Choice] An instance of Util::Choice

    def status=(status)
      if status!=nil and !status.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @status = status
      @key_modified['status'] = 1
    end

      # The method to get the details
      # @return An instance of Hash

    def details
      @details
    end

      # The method to set the value to details
      # @param details [Hash] An instance of Hash

    def details=(details)
      if details!=nil and !details.is_a? Hash
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: details EXPECTED TYPE: Hash', nil, nil)
      end
      @details = details
      @key_modified['details'] = 1
    end

      # The method to get the error_message
      # @return An instance of Util::Choice

    def error_message
      @error_message
    end

      # The method to set the value to error_message
      # @param error_message [Util::Choice] An instance of Util::Choice

    def error_message=(error_message)
      if error_message!=nil and !error_message.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: error_message EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @error_message = error_message
      @key_modified['ERROR_MESSAGE'] = 1
    end

      # The method to get the error_code
      # @return A Integer value

    def error_code
      @error_code
    end

      # The method to set the value to error_code
      # @param error_code [Integer] A Integer

    def error_code=(error_code)
      if error_code!=nil and !error_code.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: error_code EXPECTED TYPE: Integer', nil, nil)
      end
      @error_code = error_code
      @key_modified['ERROR_CODE'] = 1
    end

      # The method to get the x_error
      # @return An instance of Util::Choice

    def x_error
      @x_error
    end

      # The method to set the value to x_error
      # @param x_error [Util::Choice] An instance of Util::Choice

    def x_error=(x_error)
      if x_error!=nil and !x_error.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: x_error EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @x_error = x_error
      @key_modified['x-error'] = 1
    end

      # The method to get the info
      # @return An instance of Util::Choice

    def info
      @info
    end

      # The method to set the value to info
      # @param info [Util::Choice] An instance of Util::Choice

    def info=(info)
      if info!=nil and !info.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: info EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @info = info
      @key_modified['info'] = 1
    end

      # The method to get the x_info
      # @return An instance of Util::Choice

    def x_info
      @x_info
    end

      # The method to set the value to x_info
      # @param x_info [Util::Choice] An instance of Util::Choice

    def x_info=(x_info)
      if x_info!=nil and !x_info.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: x_info EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @x_info = x_info
      @key_modified['x-info'] = 1
    end

      # The method to get the http_status
      # @return A String value

    def http_status
      @http_status
    end

      # The method to set the value to http_status
      # @param http_status [String] A String

    def http_status=(http_status)
      if http_status!=nil and !http_status.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: http_status EXPECTED TYPE: String', nil, nil)
      end
      @http_status = http_status
      @key_modified['http_status'] = 1
    end

      # The method to check if the user has modified the given key
      # @param key [String] A String
      # @return A Integer value

    def is_key_modified(key)
      if key!=nil and !key.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
      end
      if @key_modified.key?(key)
        return @key_modified[key]
      end

      nil
    end

      # The method to mark the given key as modified
      # @param key [String] A String
      # @param modification [Integer] A Integer

    def set_key_modified(key, modification)
      if key!=nil and !key.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
      end
      if modification!=nil and !modification.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modification EXPECTED TYPE: Integer', nil, nil)
      end
      @key_modified[key] = modification
    end

  end
end
