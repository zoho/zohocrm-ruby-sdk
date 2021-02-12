require_relative '../util/stream_wrapper'
require_relative '../util/model'

module RelatedRecords
  require_relative 'response_handler'
  class FileBodyWrapper
    include Util::Model
    include ResponseHandler

    # Creates an instance of FileBodyWrapper
    def initialize
      @file = nil
      @key_modified = Hash.new
    end

      # The method to get the file
      # @return An instance of Util::StreamWrapper

    def file
      @file
    end

      # The method to set the value to file
      # @param file [Util::StreamWrapper] An instance of Util::StreamWrapper

    def file=(file)
      if file!=nil and !file.is_a? Util::StreamWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file EXPECTED TYPE: Util::StreamWrapper', nil, nil)
      end
      @file = file
      @key_modified['file'] = 1
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
