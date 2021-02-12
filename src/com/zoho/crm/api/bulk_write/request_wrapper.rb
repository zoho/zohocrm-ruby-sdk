require_relative '../util/choice'
require_relative '../util/model'

module BulkWrite
  class RequestWrapper
    include Util::Model

    # Creates an instance of RequestWrapper
    def initialize
      @character_encoding = nil
      @operation = nil
      @callback = nil
      @resource = nil
      @key_modified = Hash.new
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

      # The method to get the operation
      # @return An instance of Util::Choice

    def operation
      @operation
    end

      # The method to set the value to operation
      # @param operation [Util::Choice] An instance of Util::Choice

    def operation=(operation)
      if operation!=nil and !operation.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: operation EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @operation = operation
      @key_modified['operation'] = 1
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
