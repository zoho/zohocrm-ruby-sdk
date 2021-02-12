require_relative '../util/model'

module Tags
  require_relative 'count_handler'
  class CountWrapper
    include Util::Model
    include CountHandler

    # Creates an instance of CountWrapper
    def initialize
      @count = nil
      @key_modified = Hash.new
    end

      # The method to get the count
      # @return A String value

    def count
      @count
    end

      # The method to set the value to count
      # @param count [String] A String

    def count=(count)
      if count!=nil and !count.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: count EXPECTED TYPE: String', nil, nil)
      end
      @count = count
      @key_modified['count'] = 1
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
