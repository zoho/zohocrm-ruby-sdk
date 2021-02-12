require_relative '../util/choice'
require_relative '../util/model'

module BulkWrite
  class File
    include Util::Model

    # Creates an instance of File
    def initialize
      @status = nil
      @name = nil
      @added_count = nil
      @skipped_count = nil
      @updated_count = nil
      @total_count = nil
      @key_modified = Hash.new
    end

      # The method to get the status
      # @return An instance of Util::Choice

    def status
      @status
    end

      # The method to set the value to status
      # @param status [Util::Choice] An instance of Util::Choice

    def status=(status)
      if status!=nil and !status.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @status = status
      @key_modified['status'] = 1
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

      # The method to get the added_count
      # @return A Integer value

    def added_count
      @added_count
    end

      # The method to set the value to added_count
      # @param added_count [Integer] A Integer

    def added_count=(added_count)
      if added_count!=nil and !added_count.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: added_count EXPECTED TYPE: Integer', nil, nil)
      end
      @added_count = added_count
      @key_modified['added_count'] = 1
    end

      # The method to get the skipped_count
      # @return A Integer value

    def skipped_count
      @skipped_count
    end

      # The method to set the value to skipped_count
      # @param skipped_count [Integer] A Integer

    def skipped_count=(skipped_count)
      if skipped_count!=nil and !skipped_count.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: skipped_count EXPECTED TYPE: Integer', nil, nil)
      end
      @skipped_count = skipped_count
      @key_modified['skipped_count'] = 1
    end

      # The method to get the updated_count
      # @return A Integer value

    def updated_count
      @updated_count
    end

      # The method to set the value to updated_count
      # @param updated_count [Integer] A Integer

    def updated_count=(updated_count)
      if updated_count!=nil and !updated_count.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: updated_count EXPECTED TYPE: Integer', nil, nil)
      end
      @updated_count = updated_count
      @key_modified['updated_count'] = 1
    end

      # The method to get the total_count
      # @return A Integer value

    def total_count
      @total_count
    end

      # The method to set the value to total_count
      # @param total_count [Integer] A Integer

    def total_count=(total_count)
      if total_count!=nil and !total_count.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: total_count EXPECTED TYPE: Integer', nil, nil)
      end
      @total_count = total_count
      @key_modified['total_count'] = 1
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
