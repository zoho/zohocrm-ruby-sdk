require_relative '../util/model'

module Taxes
  class Preference
    include Util::Model

    # Creates an instance of Preference
    def initialize
      @auto_populate_tax = nil
      @modify_tax_rates = nil
      @key_modified = Hash.new
    end

      # The method to get the auto_populate_tax
      # @return A Boolean value

    def auto_populate_tax
      @auto_populate_tax
    end

      # The method to set the value to auto_populate_tax
      # @param auto_populate_tax [Boolean] A Boolean

    def auto_populate_tax=(auto_populate_tax)
      if auto_populate_tax!=nil and ! [true, false].include?auto_populate_tax
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: auto_populate_tax EXPECTED TYPE: Boolean', nil, nil)
      end
      @auto_populate_tax = auto_populate_tax
      @key_modified['auto_populate_tax'] = 1
    end

      # The method to get the modify_tax_rates
      # @return A Boolean value

    def modify_tax_rates
      @modify_tax_rates
    end

      # The method to set the value to modify_tax_rates
      # @param modify_tax_rates [Boolean] A Boolean

    def modify_tax_rates=(modify_tax_rates)
      if modify_tax_rates!=nil and ! [true, false].include?modify_tax_rates
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modify_tax_rates EXPECTED TYPE: Boolean', nil, nil)
      end
      @modify_tax_rates = modify_tax_rates
      @key_modified['modify_tax_rates'] = 1
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
