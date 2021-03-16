require_relative '../util/model'

module BulkRead
  require_relative 'action_handler'
  class ActionWrapper
    include Util::Model
    include ActionHandler

    # Creates an instance of ActionWrapper
    def initialize
      @data = nil
      @info = nil
      @key_modified = Hash.new
    end

      # The method to get the data
      # @return An instance of Array

    def data
      @data
    end

      # The method to set the value to data
      # @param data [Array] An instance of Array

    def data=(data)
      if data!=nil and !data.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data EXPECTED TYPE: Array', nil, nil)
      end
      @data = data
      @key_modified['data'] = 1
    end

      # The method to get the info
      # @return An instance of Hash

    def info
      @info
    end

      # The method to set the value to info
      # @param info [Hash] An instance of Hash

    def info=(info)
      if info!=nil and !info.is_a? Hash
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: info EXPECTED TYPE: Hash', nil, nil)
      end
      @info = info
      @key_modified['info'] = 1
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
