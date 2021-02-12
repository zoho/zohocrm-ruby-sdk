require_relative '../util/model'

module Taxes
  class Tax
    include Util::Model

    # Creates an instance of Tax
    def initialize
      @display_label = nil
      @name = nil
      @id = nil
      @value = nil
      @sequence_number = nil
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

      # The method to get the value
      # @return An instance of Float

    def value
      @value
    end

      # The method to set the value to value
      # @param value [Float] An instance of Float

    def value=(value)
      if value!=nil and !value.is_a? Float
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: value EXPECTED TYPE: Float', nil, nil)
      end
      @value = value
      @key_modified['value'] = 1
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
