require_relative '../util/model'

module Profiles
  class Category
    include Util::Model

    # Creates an instance of Category
    def initialize
      @display_label = nil
      @permissions_details = nil
      @name = nil
      @key_modified = Hash.new
    end

      # The method to get the display_label
      # @return A String value

    def display_label
      @display_label
    end

      # The method to set the value to display_label
      # @param display_label [String] A String

    def display_label=(display_label)
      if display_label!=nil and !display_label.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_label EXPECTED TYPE: String', nil, nil)
      end
      @display_label = display_label
      @key_modified['display_label'] = 1
    end

      # The method to get the permissions_details
      # @return An instance of Array

    def permissions_details
      @permissions_details
    end

      # The method to set the value to permissions_details
      # @param permissions_details [Array] An instance of Array

    def permissions_details=(permissions_details)
      if permissions_details!=nil and !permissions_details.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: permissions_details EXPECTED TYPE: Array', nil, nil)
      end
      @permissions_details = permissions_details
      @key_modified['permissions_details'] = 1
    end

      # The method to get the name
      # @return A String value

    def name
      @name
    end

      # The method to set the value to name
      # @param name [String] A String

    def name=(name)
      if name!=nil and !name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
      end
      @name = name
      @key_modified['name'] = 1
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
