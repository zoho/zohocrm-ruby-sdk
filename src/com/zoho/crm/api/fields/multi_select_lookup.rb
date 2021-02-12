require_relative '../util/model'

module Fields
  class MultiSelectLookup
    include Util::Model

    # Creates an instance of MultiSelectLookup
    def initialize
      @display_label = nil
      @linking_module = nil
      @lookup_apiname = nil
      @api_name = nil
      @connectedlookup_apiname = nil
      @id = nil
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

      # The method to get the linking_module
      # @return A String value

    def linking_module
      @linking_module
    end

      # The method to set the value to linking_module
      # @param linking_module [String] A String

    def linking_module=(linking_module)
      if linking_module!=nil and !linking_module.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: linking_module EXPECTED TYPE: String', nil, nil)
      end
      @linking_module = linking_module
      @key_modified['linking_module'] = 1
    end

      # The method to get the lookup_apiname
      # @return A String value

    def lookup_apiname
      @lookup_apiname
    end

      # The method to set the value to lookup_apiname
      # @param lookup_apiname [String] A String

    def lookup_apiname=(lookup_apiname)
      if lookup_apiname!=nil and !lookup_apiname.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lookup_apiname EXPECTED TYPE: String', nil, nil)
      end
      @lookup_apiname = lookup_apiname
      @key_modified['lookup_apiname'] = 1
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

      # The method to get the connectedlookup_apiname
      # @return A String value

    def connectedlookup_apiname
      @connectedlookup_apiname
    end

      # The method to set the value to connectedlookup_apiname
      # @param connectedlookup_apiname [String] A String

    def connectedlookup_apiname=(connectedlookup_apiname)
      if connectedlookup_apiname!=nil and !connectedlookup_apiname.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: connectedlookup_apiname EXPECTED TYPE: String', nil, nil)
      end
      @connectedlookup_apiname = connectedlookup_apiname
      @key_modified['connectedlookup_apiname'] = 1
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
