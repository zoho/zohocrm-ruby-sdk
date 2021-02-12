require_relative '../util/model'

module Fields
  class Unique
    include Util::Model

    # Creates an instance of Unique
    def initialize
      @casesensitive = nil
      @key_modified = Hash.new
    end

      # The method to get the casesensitive
      # @return A String value

    def casesensitive
      @casesensitive
    end

      # The method to set the value to casesensitive
      # @param casesensitive [String] A String

    def casesensitive=(casesensitive)
      if casesensitive!=nil and !casesensitive.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: casesensitive EXPECTED TYPE: String', nil, nil)
      end
      @casesensitive = casesensitive
      @key_modified['casesensitive'] = 1
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
