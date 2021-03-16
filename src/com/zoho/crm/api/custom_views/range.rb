require_relative '../util/model'

module CustomViews
  class Range
    include Util::Model

    # Creates an instance of Range
    def initialize
      @from = nil
      @to = nil
      @key_modified = Hash.new
    end

      # The method to get the from
      # @return A Integer value

    def from
      @from
    end

      # The method to set the value to from
      # @param from [Integer] A Integer

    def from=(from)
      if from!=nil and !from.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: from EXPECTED TYPE: Integer', nil, nil)
      end
      @from = from
      @key_modified['from'] = 1
    end

      # The method to get the to
      # @return A Integer value

    def to
      @to
    end

      # The method to set the value to to
      # @param to [Integer] A Integer

    def to=(to)
      if to!=nil and !to.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: to EXPECTED TYPE: Integer', nil, nil)
      end
      @to = to
      @key_modified['to'] = 1
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
