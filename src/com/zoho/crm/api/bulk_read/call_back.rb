require_relative '../util/choice'
require_relative '../util/model'

module BulkRead
  class CallBack
    include Util::Model

    # Creates an instance of CallBack
    def initialize
      @url = nil
      @method = nil
      @key_modified = Hash.new
    end

      # The method to get the url
      # @return A String value

    def url
      @url
    end

      # The method to set the value to url
      # @param url [String] A String

    def url=(url)
      if url!=nil and !url.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: url EXPECTED TYPE: String', nil, nil)
      end
      @url = url
      @key_modified['url'] = 1
    end

      # The method to get the method
      # @return An instance of Util::Choice

    def method
      @method
    end

      # The method to set the value to method
      # @param method [Util::Choice] An instance of Util::Choice

    def method=(method)
      if method!=nil and !method.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: method EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @method = method
      @key_modified['method'] = 1
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
