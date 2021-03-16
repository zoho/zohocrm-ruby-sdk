require_relative '../util/model'

module Fields
  class Private
    include Util::Model

    # Creates an instance of Private
    def initialize
      @restricted = nil
      @export = nil
      @type = nil
      @key_modified = Hash.new
    end

      # The method to get the restricted
      # @return A Boolean value

    def restricted
      @restricted
    end

      # The method to set the value to restricted
      # @param restricted [Boolean] A Boolean

    def restricted=(restricted)
      if restricted!=nil and ! [true, false].include?restricted
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: restricted EXPECTED TYPE: Boolean', nil, nil)
      end
      @restricted = restricted
      @key_modified['restricted'] = 1
    end

      # The method to get the export
      # @return A Boolean value

    def export
      @export
    end

      # The method to set the value to export
      # @param export [Boolean] A Boolean

    def export=(export)
      if export!=nil and ! [true, false].include?export
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: export EXPECTED TYPE: Boolean', nil, nil)
      end
      @export = export
      @key_modified['export'] = 1
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
