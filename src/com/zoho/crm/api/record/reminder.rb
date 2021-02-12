require_relative '../util/model'

module Record
  class Reminder
    include Util::Model

    # Creates an instance of Reminder
    def initialize
      @period = nil
      @unit = nil
      @key_modified = Hash.new
    end

      # The method to get the period
      # @return A String value

    def period
      @period
    end

      # The method to set the value to period
      # @param period [String] A String

    def period=(period)
      if period!=nil and !period.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: period EXPECTED TYPE: String', nil, nil)
      end
      @period = period
      @key_modified['period'] = 1
    end

      # The method to get the unit
      # @return A String value

    def unit
      @unit
    end

      # The method to set the value to unit
      # @param unit [String] A String

    def unit=(unit)
      if unit!=nil and !unit.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: unit EXPECTED TYPE: String', nil, nil)
      end
      @unit = unit
      @key_modified['unit'] = 1
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
