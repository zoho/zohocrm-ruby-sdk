require_relative '../util/model'

module BulkRead
  class Query
    include Util::Model

    # Creates an instance of Query
    def initialize
      @module_1 = nil
      @cvid = nil
      @fields = nil
      @page = nil
      @criteria = nil
      @key_modified = Hash.new
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

      # The method to get the cvid
      # @return A String value

    def cvid
      @cvid
    end

      # The method to set the value to cvid
      # @param cvid [String] A String

    def cvid=(cvid)
      if cvid!=nil and !cvid.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: cvid EXPECTED TYPE: String', nil, nil)
      end
      @cvid = cvid
      @key_modified['cvid'] = 1
    end

      # The method to get the fields
      # @return An instance of Array

    def fields
      @fields
    end

      # The method to set the value to fields
      # @param fields [Array] An instance of Array

    def fields=(fields)
      if fields!=nil and !fields.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields EXPECTED TYPE: Array', nil, nil)
      end
      @fields = fields
      @key_modified['fields'] = 1
    end

      # The method to get the page
      # @return A Integer value

    def page
      @page
    end

      # The method to set the value to page
      # @param page [Integer] A Integer

    def page=(page)
      if page!=nil and !page.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: page EXPECTED TYPE: Integer', nil, nil)
      end
      @page = page
      @key_modified['page'] = 1
    end

      # The method to get the criteria
      # @return An instance of Criteria

    def criteria
      @criteria
    end

      # The method to set the value to criteria
      # @param criteria [Criteria] An instance of Criteria

    def criteria=(criteria)
      if criteria!=nil and !criteria.is_a? Criteria
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria EXPECTED TYPE: Criteria', nil, nil)
      end
      @criteria = criteria
      @key_modified['criteria'] = 1
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
