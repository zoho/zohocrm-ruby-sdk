require_relative '../util/model'

module Record
  require_relative 'mass_update_response_handler'
  class MassUpdateResponseWrapper
    include Util::Model
    include MassUpdateResponseHandler

    # Creates an instance of MassUpdateResponseWrapper
    def initialize
      @data = nil
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
