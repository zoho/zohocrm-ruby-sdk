require_relative '../util/model'

module BluePrint
  class ProcessInfo
    include Util::Model

    # Creates an instance of ProcessInfo
    def initialize
      @field_id = nil
      @is_continuous = nil
      @api_name = nil
      @continuous = nil
      @field_label = nil
      @name = nil
      @column_name = nil
      @field_value = nil
      @id = nil
      @field_name = nil
      @escalation = nil
      @key_modified = Hash.new
    end

      # The method to get the field_id
      # @return A String value

    def field_id
      @field_id
    end

      # The method to set the value to field_id
      # @param field_id [String] A String

    def field_id=(field_id)
      if field_id!=nil and !field_id.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_id EXPECTED TYPE: String', nil, nil)
      end
      @field_id = field_id
      @key_modified['field_id'] = 1
    end

      # The method to get the is_continuous
      # @return A Boolean value

    def is_continuous
      @is_continuous
    end

      # The method to set the value to is_continuous
      # @param is_continuous [Boolean] A Boolean

    def is_continuous=(is_continuous)
      if is_continuous!=nil and ! [true, false].include?is_continuous
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: is_continuous EXPECTED TYPE: Boolean', nil, nil)
      end
      @is_continuous = is_continuous
      @key_modified['is_continuous'] = 1
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

      # The method to get the continuous
      # @return A Boolean value

    def continuous
      @continuous
    end

      # The method to set the value to continuous
      # @param continuous [Boolean] A Boolean

    def continuous=(continuous)
      if continuous!=nil and ! [true, false].include?continuous
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: continuous EXPECTED TYPE: Boolean', nil, nil)
      end
      @continuous = continuous
      @key_modified['continuous'] = 1
    end

      # The method to get the field_label
      # @return A String value

    def field_label
      @field_label
    end

      # The method to set the value to field_label
      # @param field_label [String] A String

    def field_label=(field_label)
      if field_label!=nil and !field_label.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_label EXPECTED TYPE: String', nil, nil)
      end
      @field_label = field_label
      @key_modified['field_label'] = 1
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

      # The method to get the column_name
      # @return A String value

    def column_name
      @column_name
    end

      # The method to set the value to column_name
      # @param column_name [String] A String

    def column_name=(column_name)
      if column_name!=nil and !column_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: column_name EXPECTED TYPE: String', nil, nil)
      end
      @column_name = column_name
      @key_modified['column_name'] = 1
    end

      # The method to get the field_value
      # @return A String value

    def field_value
      @field_value
    end

      # The method to set the value to field_value
      # @param field_value [String] A String

    def field_value=(field_value)
      if field_value!=nil and !field_value.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_value EXPECTED TYPE: String', nil, nil)
      end
      @field_value = field_value
      @key_modified['field_value'] = 1
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

      # The method to get the field_name
      # @return A String value

    def field_name
      @field_name
    end

      # The method to set the value to field_name
      # @param field_name [String] A String

    def field_name=(field_name)
      if field_name!=nil and !field_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field_name EXPECTED TYPE: String', nil, nil)
      end
      @field_name = field_name
      @key_modified['field_name'] = 1
    end

      # The method to get the escalation
      # @return A String value

    def escalation
      @escalation
    end

      # The method to set the value to escalation
      # @param escalation [String] A String

    def escalation=(escalation)
      if escalation!=nil and !escalation.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: escalation EXPECTED TYPE: String', nil, nil)
      end
      @escalation = escalation
      @key_modified['escalation'] = 1
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
