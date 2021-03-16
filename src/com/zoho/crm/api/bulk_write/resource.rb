require_relative '../util/choice'
require_relative '../util/model'

module BulkWrite
  class Resource
    include Util::Model

    # Creates an instance of Resource
    def initialize
      @status = nil
      @type = nil
      @module_1 = nil
      @file_id = nil
      @ignore_empty = nil
      @find_by = nil
      @field_mappings = nil
      @file = nil
      @key_modified = Hash.new
    end

      # The method to get the status
      # @return An instance of Util::Choice

    def status
      @status
    end

      # The method to set the value to status
      # @param status [Util::Choice] An instance of Util::Choice

    def status=(status)
      if status!=nil and !status.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @status = status
      @key_modified['status'] = 1
    end

      # The method to get the type
      # @return An instance of Util::Choice

    def type
      @type
    end

      # The method to set the value to type
      # @param type [Util::Choice] An instance of Util::Choice

    def type=(type)
      if type!=nil and !type.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @type = type
      @key_modified['type'] = 1
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

      # The method to get the file_id
      # @return A String value

    def file_id
      @file_id
    end

      # The method to set the value to file_id
      # @param file_id [String] A String

    def file_id=(file_id)
      if file_id!=nil and !file_id.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_id EXPECTED TYPE: String', nil, nil)
      end
      @file_id = file_id
      @key_modified['file_id'] = 1
    end

      # The method to get the ignore_empty
      # @return A Boolean value

    def ignore_empty
      @ignore_empty
    end

      # The method to set the value to ignore_empty
      # @param ignore_empty [Boolean] A Boolean

    def ignore_empty=(ignore_empty)
      if ignore_empty!=nil and ! [true, false].include?ignore_empty
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ignore_empty EXPECTED TYPE: Boolean', nil, nil)
      end
      @ignore_empty = ignore_empty
      @key_modified['ignore_empty'] = 1
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

      # The method to get the field_mappings
      # @return An instance of Array

    def field_mappings
      @field_mappings
    end

      # The method to set the value to field_mappings
      # @param field_mappings [Array] An instance of Array

    def field_mappings=(field_mappings)
      if field_mappings!=nil and !field_mappings.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_mappings EXPECTED TYPE: Array', nil, nil)
      end
      @field_mappings = field_mappings
      @key_modified['field_mappings'] = 1
    end

      # The method to get the file
      # @return An instance of File

    def file
      @file
    end

      # The method to set the value to file
      # @param file [File] An instance of File

    def file=(file)
      if file!=nil and !file.is_a? File
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file EXPECTED TYPE: File', nil, nil)
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
