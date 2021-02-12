require_relative '../util/model'

module Fields
  class AssociationDetails
    include Util::Model

    # Creates an instance of AssociationDetails
    def initialize
      @lookup_field = nil
      @related_field = nil
      @key_modified = Hash.new
    end

      # The method to get the lookup_field
      # @return An instance of LookupField

    def lookup_field
      @lookup_field
    end

      # The method to set the value to lookup_field
      # @param lookup_field [LookupField] An instance of LookupField

    def lookup_field=(lookup_field)
      if lookup_field!=nil and !lookup_field.is_a? LookupField
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lookup_field EXPECTED TYPE: LookupField', nil, nil)
      end
      @lookup_field = lookup_field
      @key_modified['lookup_field'] = 1
    end

      # The method to get the related_field
      # @return An instance of LookupField

    def related_field
      @related_field
    end

      # The method to set the value to related_field
      # @param related_field [LookupField] An instance of LookupField

    def related_field=(related_field)
      if related_field!=nil and !related_field.is_a? LookupField
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: related_field EXPECTED TYPE: LookupField', nil, nil)
      end
      @related_field = related_field
      @key_modified['related_field'] = 1
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
