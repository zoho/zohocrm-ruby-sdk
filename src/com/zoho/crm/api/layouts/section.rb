require_relative '../fields/field'
require_relative '../util/model'

module Layouts
  class Section
    include Util::Model

    # Creates an instance of Section
    def initialize
      @display_label = nil
      @sequence_number = nil
      @issubformsection = nil
      @tab_traversal = nil
      @api_name = nil
      @column_count = nil
      @name = nil
      @generated_type = nil
      @fields = nil
      @properties = nil
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

      # The method to get the sequence_number
      # @return A Integer value

    def sequence_number
      @sequence_number
    end

      # The method to set the value to sequence_number
      # @param sequence_number [Integer] A Integer

    def sequence_number=(sequence_number)
      if sequence_number!=nil and !sequence_number.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sequence_number EXPECTED TYPE: Integer', nil, nil)
      end
      @sequence_number = sequence_number
      @key_modified['sequence_number'] = 1
    end

      # The method to get the issubformsection
      # @return A Boolean value

    def issubformsection
      @issubformsection
    end

      # The method to set the value to issubformsection
      # @param issubformsection [Boolean] A Boolean

    def issubformsection=(issubformsection)
      if issubformsection!=nil and ! [true, false].include?issubformsection
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: issubformsection EXPECTED TYPE: Boolean', nil, nil)
      end
      @issubformsection = issubformsection
      @key_modified['isSubformSection'] = 1
    end

      # The method to get the tab_traversal
      # @return A Integer value

    def tab_traversal
      @tab_traversal
    end

      # The method to set the value to tab_traversal
      # @param tab_traversal [Integer] A Integer

    def tab_traversal=(tab_traversal)
      if tab_traversal!=nil and !tab_traversal.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tab_traversal EXPECTED TYPE: Integer', nil, nil)
      end
      @tab_traversal = tab_traversal
      @key_modified['tab_traversal'] = 1
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

      # The method to get the column_count
      # @return A Integer value

    def column_count
      @column_count
    end

      # The method to set the value to column_count
      # @param column_count [Integer] A Integer

    def column_count=(column_count)
      if column_count!=nil and !column_count.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: column_count EXPECTED TYPE: Integer', nil, nil)
      end
      @column_count = column_count
      @key_modified['column_count'] = 1
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

      # The method to get the generated_type
      # @return A String value

    def generated_type
      @generated_type
    end

      # The method to set the value to generated_type
      # @param generated_type [String] A String

    def generated_type=(generated_type)
      if generated_type!=nil and !generated_type.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: generated_type EXPECTED TYPE: String', nil, nil)
      end
      @generated_type = generated_type
      @key_modified['generated_type'] = 1
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

      # The method to get the properties
      # @return An instance of Properties

    def properties
      @properties
    end

      # The method to set the value to properties
      # @param properties [Properties] An instance of Properties

    def properties=(properties)
      if properties!=nil and !properties.is_a? Properties
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: properties EXPECTED TYPE: Properties', nil, nil)
      end
      @properties = properties
      @key_modified['properties'] = 1
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
