require_relative '../util/model'

module RelatedLists
  require_relative 'response_handler'
  class ResponseWrapper
    include Util::Model
    include ResponseHandler

    # Creates an instance of ResponseWrapper
    def initialize
      @related_lists = nil
      @key_modified = Hash.new
    end

      # The method to get the related_lists
      # @return An instance of Array

    def related_lists
      @related_lists
    end

      # The method to set the value to related_lists
      # @param related_lists [Array] An instance of Array

    def related_lists=(related_lists)
      if related_lists!=nil and !related_lists.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_lists EXPECTED TYPE: Array', nil, nil)
      end
      @related_lists = related_lists
      @key_modified['related_lists'] = 1
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
