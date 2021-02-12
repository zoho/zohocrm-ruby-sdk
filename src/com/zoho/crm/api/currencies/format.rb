require_relative '../util/choice'
require_relative '../util/model'

module Currencies
  class Format
    include Util::Model

    # Creates an instance of Format
    def initialize
      @decimal_separator = nil
      @thousand_separator = nil
      @decimal_places = nil
      @key_modified = Hash.new
    end

      # The method to get the decimal_separator
      # @return An instance of Util::Choice

    def decimal_separator
      @decimal_separator
    end

      # The method to set the value to decimal_separator
      # @param decimal_separator [Util::Choice] An instance of Util::Choice

    def decimal_separator=(decimal_separator)
      if decimal_separator!=nil and !decimal_separator.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: decimal_separator EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @decimal_separator = decimal_separator
      @key_modified['decimal_separator'] = 1
    end

      # The method to get the thousand_separator
      # @return An instance of Util::Choice

    def thousand_separator
      @thousand_separator
    end

      # The method to set the value to thousand_separator
      # @param thousand_separator [Util::Choice] An instance of Util::Choice

    def thousand_separator=(thousand_separator)
      if thousand_separator!=nil and !thousand_separator.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: thousand_separator EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @thousand_separator = thousand_separator
      @key_modified['thousand_separator'] = 1
    end

      # The method to get the decimal_places
      # @return An instance of Util::Choice

    def decimal_places
      @decimal_places
    end

      # The method to set the value to decimal_places
      # @param decimal_places [Util::Choice] An instance of Util::Choice

    def decimal_places=(decimal_places)
      if decimal_places!=nil and !decimal_places.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: decimal_places EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @decimal_places = decimal_places
      @key_modified['decimal_places'] = 1
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
