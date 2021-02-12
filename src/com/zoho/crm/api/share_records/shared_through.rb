require_relative '../modules/module'
require_relative '../util/model'

module ShareRecords
  class SharedThrough
    include Util::Model

    # Creates an instance of SharedThrough
    def initialize
      @module_1 = nil
      @id = nil
      @entity_name = nil
      @key_modified = Hash.new
    end

      # The method to get the module
      # @return An instance of Modules::Module

    def module
      @module_1
    end

      # The method to set the value to module
      # @param module_1 [Modules::Module] An instance of Modules::Module

    def module=(module_1)
      if module_1!=nil and !module_1.is_a? Modules::Module
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: Module', nil, nil)
      end
      @module_1 = module_1
      @key_modified['module'] = 1
    end

      # The method to get the id
      # @return A Integer value

    def id
      @id
    end

      # The method to set the value to id
      # @param id [Integer] A Integer

    def id=(id)
      if id!=nil and !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      @id = id
      @key_modified['id'] = 1
    end

      # The method to get the entity_name
      # @return A String value

    def entity_name
      @entity_name
    end

      # The method to set the value to entity_name
      # @param entity_name [String] A String

    def entity_name=(entity_name)
      if entity_name!=nil and !entity_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: entity_name EXPECTED TYPE: String', nil, nil)
      end
      @entity_name = entity_name
      @key_modified['entity_name'] = 1
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
