require_relative '../util/model'

module BulkWrite
  class Result
    include Util::Model

    # Creates an instance of Result
    def initialize
      @download_url = nil
      @key_modified = Hash.new
    end

      # The method to get the download_url
      # @return A String value

    def download_url
      @download_url
    end

      # The method to set the value to download_url
      # @param download_url [String] A String

    def download_url=(download_url)
      if download_url!=nil and !download_url.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: download_url EXPECTED TYPE: String', nil, nil)
      end
      @download_url = download_url
      @key_modified['download_url'] = 1
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
