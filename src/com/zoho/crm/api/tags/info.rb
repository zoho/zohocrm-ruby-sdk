require_relative '../util/model'

module Tags
  class Info
    include Util::Model

    # Creates an instance of Info
    def initialize
      @count = nil
      @allowed_count = nil
      @key_modified = Hash.new
    end

      # The method to get the count
      # @return A Integer value

    def count
      @count
    end

      # The method to set the value to count
      # @param count [Integer] A Integer

    def count=(count)
      if count!=nil and !count.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: count EXPECTED TYPE: Integer', nil, nil)
      end
      @count = count
      @key_modified['count'] = 1
    end

      # The method to get the allowed_count
      # @return A Integer value

    def allowed_count
      @allowed_count
    end

      # The method to set the value to allowed_count
      # @param allowed_count [Integer] A Integer

    def allowed_count=(allowed_count)
      if allowed_count!=nil and !allowed_count.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: allowed_count EXPECTED TYPE: Integer', nil, nil)
      end
      @allowed_count = allowed_count
      @key_modified['allowed_count'] = 1
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
