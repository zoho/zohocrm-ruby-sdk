require_relative '../util/model'

module Fields
  class Currency
    include Util::Model

    # Creates an instance of Currency
    def initialize
      @rounding_option = nil
      @precision = nil
      @key_modified = Hash.new
    end

      # The method to get the rounding_option
      # @return A String value

    def rounding_option
      @rounding_option
    end

      # The method to set the value to rounding_option
      # @param rounding_option [String] A String

    def rounding_option=(rounding_option)
      if rounding_option!=nil and !rounding_option.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: rounding_option EXPECTED TYPE: String', nil, nil)
      end
      @rounding_option = rounding_option
      @key_modified['rounding_option'] = 1
    end

      # The method to get the precision
      # @return A Integer value

    def precision
      @precision
    end

      # The method to set the value to precision
      # @param precision [Integer] A Integer

    def precision=(precision)
      if precision!=nil and !precision.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: precision EXPECTED TYPE: Integer', nil, nil)
      end
      @precision = precision
      @key_modified['precision'] = 1
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
