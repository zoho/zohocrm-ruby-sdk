require_relative '../users/user'
require_relative '../util/model'

module ShareRecords
  require_relative 'response_handler'
  class ResponseWrapper
    include Util::Model
    include ResponseHandler

    # Creates an instance of ResponseWrapper
    def initialize
      @share = nil
      @shareable_user = nil
      @key_modified = Hash.new
    end

      # The method to get the share
      # @return An instance of Array

    def share
      @share
    end

      # The method to set the value to share
      # @param share [Array] An instance of Array

    def share=(share)
      if share!=nil and !share.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: share EXPECTED TYPE: Array', nil, nil)
      end
      @share = share
      @key_modified['share'] = 1
    end

      # The method to get the shareable_user
      # @return An instance of Array

    def shareable_user
      @shareable_user
    end

      # The method to set the value to shareable_user
      # @param shareable_user [Array] An instance of Array

    def shareable_user=(shareable_user)
      if shareable_user!=nil and !shareable_user.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shareable_user EXPECTED TYPE: Array', nil, nil)
      end
      @shareable_user = shareable_user
      @key_modified['shareable_user'] = 1
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
