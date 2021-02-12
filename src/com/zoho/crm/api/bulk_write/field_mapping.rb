require_relative '../util/model'

module BulkWrite
  class FieldMapping
    include Util::Model

    # Creates an instance of FieldMapping
    def initialize
      @api_name = nil
      @index = nil
      @format = nil
      @find_by = nil
      @default_value = nil
      @module_1 = nil
      @key_modified = Hash.new
    end

      # The method to get the api_name
      # @return A String value

    def api_name
      @api_name
    end

      # The method to set the value to api_name
      # @param api_name [String] A String

    def api_name=(api_name)
      if api_name!=nil and !api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
      end
      @api_name = api_name
      @key_modified['api_name'] = 1
    end

      # The method to get the index
      # @return A Integer value

    def index
      @index
    end

      # The method to set the value to index
      # @param index [Integer] A Integer

    def index=(index)
      if index!=nil and !index.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: index EXPECTED TYPE: Integer', nil, nil)
      end
      @index = index
      @key_modified['index'] = 1
    end

      # The method to get the format
      # @return A String value

    def format
      @format
    end

      # The method to set the value to format
      # @param format [String] A String

    def format=(format)
      if format!=nil and !format.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: format EXPECTED TYPE: String', nil, nil)
      end
      @format = format
      @key_modified['format'] = 1
    end

      # The method to get the find_by
      # @return A String value

    def find_by
      @find_by
    end

      # The method to set the value to find_by
      # @param find_by [String] A String

    def find_by=(find_by)
      if find_by!=nil and !find_by.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: find_by EXPECTED TYPE: String', nil, nil)
      end
      @find_by = find_by
      @key_modified['find_by'] = 1
    end

      # The method to get the default_value
      # @return An instance of Hash

    def default_value
      @default_value
    end

      # The method to set the value to default_value
      # @param default_value [Hash] An instance of Hash

    def default_value=(default_value)
      if default_value!=nil and !default_value.is_a? Hash
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: default_value EXPECTED TYPE: Hash', nil, nil)
      end
      @default_value = default_value
      @key_modified['default_value'] = 1
    end

      # The method to get the module
      # @return A String value

    def module
      @module_1
    end

      # The method to set the value to module
      # @param module_1 [String] A String

    def module=(module_1)
      if module_1!=nil and !module_1.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
      end
      @module_1 = module_1
      @key_modified['module'] = 1
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
