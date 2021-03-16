require_relative '../util/model'

module Fields
  class Formula
    include Util::Model

    # Creates an instance of Formula
    def initialize
      @return_type = nil
      @expression = nil
      @key_modified = Hash.new
    end

      # The method to get the return_type
      # @return A String value

    def return_type
      @return_type
    end

      # The method to set the value to return_type
      # @param return_type [String] A String

    def return_type=(return_type)
      if return_type!=nil and !return_type.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: return_type EXPECTED TYPE: String', nil, nil)
      end
      @return_type = return_type
      @key_modified['return_type'] = 1
    end

      # The method to get the expression
      # @return A String value

    def expression
      @expression
    end

      # The method to set the value to expression
      # @param expression [String] A String

    def expression=(expression)
      if expression!=nil and !expression.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: expression EXPECTED TYPE: String', nil, nil)
      end
      @expression = expression
      @key_modified['expression'] = 1
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
