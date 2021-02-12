require_relative '../users/user'
require_relative '../util/model'

module BulkWrite
  require_relative 'response_wrapper'
  class BulkWriteResponse
    include Util::Model
    include ResponseWrapper

    # Creates an instance of BulkWriteResponse
    def initialize
      @status = nil
      @character_encoding = nil
      @resource = nil
      @id = nil
      @callback = nil
      @result = nil
      @created_by = nil
      @operation = nil
      @created_time = nil
      @key_modified = Hash.new
    end

      # The method to get the status
      # @return A String value

    def status
      @status
    end

      # The method to set the value to status
      # @param status [String] A String

    def status=(status)
      if status!=nil and !status.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: String', nil, nil)
      end
      @status = status
      @key_modified['status'] = 1
    end

      # The method to get the character_encoding
      # @return A String value

    def character_encoding
      @character_encoding
    end

      # The method to set the value to character_encoding
      # @param character_encoding [String] A String

    def character_encoding=(character_encoding)
      if character_encoding!=nil and !character_encoding.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: character_encoding EXPECTED TYPE: String', nil, nil)
      end
      @character_encoding = character_encoding
      @key_modified['character_encoding'] = 1
    end

      # The method to get the resource
      # @return An instance of Array

    def resource
      @resource
    end

      # The method to set the value to resource
      # @param resource [Array] An instance of Array

    def resource=(resource)
      if resource!=nil and !resource.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: resource EXPECTED TYPE: Array', nil, nil)
      end
      @resource = resource
      @key_modified['resource'] = 1
    end

      # The method to get the id
      # @return A Integer value

    def id
      @id
    end

      # The method to set the value to id
      # @param id [Integer] A Integer

    def id=(id)
      if id!=nil and !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      @id = id
      @key_modified['id'] = 1
    end

      # The method to get the callback
      # @return An instance of CallBack

    def callback
      @callback
    end

      # The method to set the value to callback
      # @param callback [CallBack] An instance of CallBack

    def callback=(callback)
      if callback!=nil and !callback.is_a? CallBack
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: callback EXPECTED TYPE: CallBack', nil, nil)
      end
      @callback = callback
      @key_modified['callback'] = 1
    end

      # The method to get the result
      # @return An instance of Result

    def result
      @result
    end

      # The method to set the value to result
      # @param result [Result] An instance of Result

    def result=(result)
      if result!=nil and !result.is_a? Result
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: result EXPECTED TYPE: Result', nil, nil)
      end
      @result = result
      @key_modified['result'] = 1
    end

      # The method to get the created_by
      # @return An instance of Users::User

    def created_by
      @created_by
    end

      # The method to set the value to created_by
      # @param created_by [Users::User] An instance of Users::User

    def created_by=(created_by)
      if created_by!=nil and !created_by.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: User', nil, nil)
      end
      @created_by = created_by
      @key_modified['created_by'] = 1
    end

      # The method to get the operation
      # @return A String value

    def operation
      @operation
    end

      # The method to set the value to operation
      # @param operation [String] A String

    def operation=(operation)
      if operation!=nil and !operation.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: operation EXPECTED TYPE: String', nil, nil)
      end
      @operation = operation
      @key_modified['operation'] = 1
    end

      # The method to get the created_time
      # @return An instance of DateTime

    def created_time
      @created_time
    end

      # The method to set the value to created_time
      # @param created_time [DateTime] An instance of DateTime

    def created_time=(created_time)
      if created_time!=nil and !created_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
      end
      @created_time = created_time
      @key_modified['created_time'] = 1
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
