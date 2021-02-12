require_relative '../fields/field'
require_relative '../record/record'
require_relative '../util/model'

module BluePrint
  class Transition
    include Util::Model

    # Creates an instance of Transition
    def initialize
      @next_transitions = nil
      @percent_partial_save = nil
      @data = nil
      @next_field_value = nil
      @name = nil
      @criteria_matched = nil
      @id = nil
      @fields = nil
      @criteria_message = nil
      @type = nil
      @execution_time = nil
      @key_modified = Hash.new
    end

      # The method to get the next_transitions
      # @return An instance of Array

    def next_transitions
      @next_transitions
    end

      # The method to set the value to next_transitions
      # @param next_transitions [Array] An instance of Array

    def next_transitions=(next_transitions)
      if next_transitions!=nil and !next_transitions.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: next_transitions EXPECTED TYPE: Array', nil, nil)
      end
      @next_transitions = next_transitions
      @key_modified['next_transitions'] = 1
    end

      # The method to get the percent_partial_save
      # @return An instance of Float

    def percent_partial_save
      @percent_partial_save
    end

      # The method to set the value to percent_partial_save
      # @param percent_partial_save [Float] An instance of Float

    def percent_partial_save=(percent_partial_save)
      if percent_partial_save!=nil and !percent_partial_save.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: percent_partial_save EXPECTED TYPE: Float', nil, nil)
      end
      @percent_partial_save = percent_partial_save
      @key_modified['percent_partial_save'] = 1
    end

      # The method to get the data
      # @return An instance of Record::Record

    def data
      @data
    end

      # The method to set the value to data
      # @param data [Record::Record] An instance of Record::Record

    def data=(data)
      if data!=nil and !data.is_a? Record::Record
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data EXPECTED TYPE: Record', nil, nil)
      end
      @data = data
      @key_modified['data'] = 1
    end

      # The method to get the next_field_value
      # @return A String value

    def next_field_value
      @next_field_value
    end

      # The method to set the value to next_field_value
      # @param next_field_value [String] A String

    def next_field_value=(next_field_value)
      if next_field_value!=nil and !next_field_value.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: next_field_value EXPECTED TYPE: String', nil, nil)
      end
      @next_field_value = next_field_value
      @key_modified['next_field_value'] = 1
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

      # The method to get the criteria_matched
      # @return A Boolean value

    def criteria_matched
      @criteria_matched
    end

      # The method to set the value to criteria_matched
      # @param criteria_matched [Boolean] A Boolean

    def criteria_matched=(criteria_matched)
      if criteria_matched!=nil and ! [true, false].include?criteria_matched
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria_matched EXPECTED TYPE: Boolean', nil, nil)
      end
      @criteria_matched = criteria_matched
      @key_modified['criteria_matched'] = 1
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

      # The method to get the criteria_message
      # @return A String value

    def criteria_message
      @criteria_message
    end

      # The method to set the value to criteria_message
      # @param criteria_message [String] A String

    def criteria_message=(criteria_message)
      if criteria_message!=nil and !criteria_message.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria_message EXPECTED TYPE: String', nil, nil)
      end
      @criteria_message = criteria_message
      @key_modified['criteria_message'] = 1
    end

      # The method to get the type
      # @return A String value

    def type
      @type
    end

      # The method to set the value to type
      # @param type [String] A String

    def type=(type)
      if type!=nil and !type.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
      end
      @type = type
      @key_modified['type'] = 1
    end

      # The method to get the execution_time
      # @return An instance of DateTime

    def execution_time
      @execution_time
    end

      # The method to set the value to execution_time
      # @param execution_time [DateTime] An instance of DateTime

    def execution_time=(execution_time)
      if execution_time!=nil and !execution_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: execution_time EXPECTED TYPE: DateTime', nil, nil)
      end
      @execution_time = execution_time
      @key_modified['execution_time'] = 1
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
