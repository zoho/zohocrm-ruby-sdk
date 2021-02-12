require_relative '../util/model'

module Query
  class BodyWrapper
    include Util::Model

    # Creates an instance of BodyWrapper
    def initialize
      @select_query = nil
      @key_modified = Hash.new
    end

      # The method to get the select_query
      # @return A String value

    def select_query
      @select_query
    end

      # The method to set the value to select_query
      # @param select_query [String] A String

    def select_query=(select_query)
      if select_query!=nil and !select_query.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: select_query EXPECTED TYPE: String', nil, nil)
      end
      @select_query = select_query
      @key_modified['select_query'] = 1
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
