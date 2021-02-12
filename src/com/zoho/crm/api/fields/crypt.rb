require_relative '../util/model'

module Fields
  class Crypt
    include Util::Model

    # Creates an instance of Crypt
    def initialize
      @mode = nil
      @column = nil
      @encfldids = nil
      @notify = nil
      @table = nil
      @status = nil
      @key_modified = Hash.new
    end

      # The method to get the mode
      # @return A String value

    def mode
      @mode
    end

      # The method to set the value to mode
      # @param mode [String] A String

    def mode=(mode)
      if mode!=nil and !mode.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mode EXPECTED TYPE: String', nil, nil)
      end
      @mode = mode
      @key_modified['mode'] = 1
    end

      # The method to get the column
      # @return A String value

    def column
      @column
    end

      # The method to set the value to column
      # @param column [String] A String

    def column=(column)
      if column!=nil and !column.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: column EXPECTED TYPE: String', nil, nil)
      end
      @column = column
      @key_modified['column'] = 1
    end

      # The method to get the encfldids
      # @return An instance of Array

    def encfldids
      @encfldids
    end

      # The method to set the value to encfldids
      # @param encfldids [Array] An instance of Array

    def encfldids=(encfldids)
      if encfldids!=nil and !encfldids.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: encfldids EXPECTED TYPE: Array', nil, nil)
      end
      @encfldids = encfldids
      @key_modified['encFldIds'] = 1
    end

      # The method to get the notify
      # @return A String value

    def notify
      @notify
    end

      # The method to set the value to notify
      # @param notify [String] A String

    def notify=(notify)
      if notify!=nil and !notify.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: notify EXPECTED TYPE: String', nil, nil)
      end
      @notify = notify
      @key_modified['notify'] = 1
    end

      # The method to get the table
      # @return A String value

    def table
      @table
    end

      # The method to set the value to table
      # @param table [String] A String

    def table=(table)
      if table!=nil and !table.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: table EXPECTED TYPE: String', nil, nil)
      end
      @table = table
      @key_modified['table'] = 1
    end

      # The method to get the status
      # @return A Integer value

    def status
      @status
    end

      # The method to set the value to status
      # @param status [Integer] A Integer

    def status=(status)
      if status!=nil and !status.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: Integer', nil, nil)
      end
      @status = status
      @key_modified['status'] = 1
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
