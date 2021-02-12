require_relative '../util/model'

module Tags
  class ConflictWrapper
    include Util::Model

    # Creates an instance of ConflictWrapper
    def initialize
      @conflict_id = nil
      @key_modified = Hash.new
    end

      # The method to get the conflict_id
      # @return A String value

    def conflict_id
      @conflict_id
    end

      # The method to set the value to conflict_id
      # @param conflict_id [String] A String

    def conflict_id=(conflict_id)
      if conflict_id!=nil and !conflict_id.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: conflict_id EXPECTED TYPE: String', nil, nil)
      end
      @conflict_id = conflict_id
      @key_modified['conflict_id'] = 1
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
