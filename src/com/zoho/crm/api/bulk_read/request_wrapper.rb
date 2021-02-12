require_relative '../util/choice'
require_relative '../util/model'

module BulkRead
  class RequestWrapper
    include Util::Model

    # Creates an instance of RequestWrapper
    def initialize
      @callback = nil
      @query = nil
      @file_type = nil
      @key_modified = Hash.new
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

      # The method to get the query
      # @return An instance of Query

    def query
      @query
    end

      # The method to set the value to query
      # @param query [Query] An instance of Query

    def query=(query)
      if query!=nil and !query.is_a? Query
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: query EXPECTED TYPE: Query', nil, nil)
      end
      @query = query
      @key_modified['query'] = 1
    end

      # The method to get the file_type
      # @return An instance of Util::Choice

    def file_type
      @file_type
    end

      # The method to set the value to file_type
      # @param file_type [Util::Choice] An instance of Util::Choice

    def file_type=(file_type)
      if file_type!=nil and !file_type.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_type EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @file_type = file_type
      @key_modified['file_type'] = 1
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
