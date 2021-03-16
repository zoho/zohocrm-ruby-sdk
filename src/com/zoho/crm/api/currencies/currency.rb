require_relative '../users/user'
require_relative '../util/model'

module Currencies
  class Currency
    include Util::Model

    # Creates an instance of Currency
    def initialize
      @symbol = nil
      @created_time = nil
      @is_active = nil
      @exchange_rate = nil
      @format = nil
      @created_by = nil
      @prefix_symbol = nil
      @is_base = nil
      @modified_time = nil
      @name = nil
      @modified_by = nil
      @id = nil
      @iso_code = nil
      @key_modified = Hash.new
    end

      # The method to get the symbol
      # @return A String value

    def symbol
      @symbol
    end

      # The method to set the value to symbol
      # @param symbol [String] A String

    def symbol=(symbol)
      if symbol!=nil and !symbol.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: symbol EXPECTED TYPE: String', nil, nil)
      end
      @symbol = symbol
      @key_modified['symbol'] = 1
    end

      # The method to get the created_time
      # @return An instance of DateTime

    def created_time
      @created_time
    end

      # The method to set the value to created_time
      # @param created_time [DateTime] An instance of DateTime

    def created_time=(created_time)
      if created_time!=nil and !created_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
      end
      @created_time = created_time
      @key_modified['created_time'] = 1
    end

      # The method to get the is_active
      # @return A Boolean value

    def is_active
      @is_active
    end

      # The method to set the value to is_active
      # @param is_active [Boolean] A Boolean

    def is_active=(is_active)
      if is_active!=nil and ! [true, false].include?is_active
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: is_active EXPECTED TYPE: Boolean', nil, nil)
      end
      @is_active = is_active
      @key_modified['is_active'] = 1
    end

      # The method to get the exchange_rate
      # @return A String value

    def exchange_rate
      @exchange_rate
    end

      # The method to set the value to exchange_rate
      # @param exchange_rate [String] A String

    def exchange_rate=(exchange_rate)
      if exchange_rate!=nil and !exchange_rate.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: exchange_rate EXPECTED TYPE: String', nil, nil)
      end
      @exchange_rate = exchange_rate
      @key_modified['exchange_rate'] = 1
    end

      # The method to get the format
      # @return An instance of Format

    def format
      @format
    end

      # The method to set the value to format
      # @param format [Format] An instance of Format

    def format=(format)
      if format!=nil and !format.is_a? Format
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: format EXPECTED TYPE: Format', nil, nil)
      end
      @format = format
      @key_modified['format'] = 1
    end

      # The method to get the created_by
      # @return An instance of Users::User

    def created_by
      @created_by
    end

      # The method to set the value to created_by
      # @param created_by [Users::User] An instance of Users::User

    def created_by=(created_by)
      if created_by!=nil and !created_by.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: User', nil, nil)
      end
      @created_by = created_by
      @key_modified['created_by'] = 1
    end

      # The method to get the prefix_symbol
      # @return A Boolean value

    def prefix_symbol
      @prefix_symbol
    end

      # The method to set the value to prefix_symbol
      # @param prefix_symbol [Boolean] A Boolean

    def prefix_symbol=(prefix_symbol)
      if prefix_symbol!=nil and ! [true, false].include?prefix_symbol
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: prefix_symbol EXPECTED TYPE: Boolean', nil, nil)
      end
      @prefix_symbol = prefix_symbol
      @key_modified['prefix_symbol'] = 1
    end

      # The method to get the is_base
      # @return A Boolean value

    def is_base
      @is_base
    end

      # The method to set the value to is_base
      # @param is_base [Boolean] A Boolean

    def is_base=(is_base)
      if is_base!=nil and ! [true, false].include?is_base
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: is_base EXPECTED TYPE: Boolean', nil, nil)
      end
      @is_base = is_base
      @key_modified['is_base'] = 1
    end

      # The method to get the modified_time
      # @return An instance of DateTime

    def modified_time
      @modified_time
    end

      # The method to set the value to modified_time
      # @param modified_time [DateTime] An instance of DateTime

    def modified_time=(modified_time)
      if modified_time!=nil and !modified_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
      end
      @modified_time = modified_time
      @key_modified['modified_time'] = 1
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

      # The method to get the modified_by
      # @return An instance of Users::User

    def modified_by
      @modified_by
    end

      # The method to set the value to modified_by
      # @param modified_by [Users::User] An instance of Users::User

    def modified_by=(modified_by)
      if modified_by!=nil and !modified_by.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: User', nil, nil)
      end
      @modified_by = modified_by
      @key_modified['modified_by'] = 1
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

      # The method to get the iso_code
      # @return A String value

    def iso_code
      @iso_code
    end

      # The method to set the value to iso_code
      # @param iso_code [String] A String

    def iso_code=(iso_code)
      if iso_code!=nil and !iso_code.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: iso_code EXPECTED TYPE: String', nil, nil)
      end
      @iso_code = iso_code
      @key_modified['iso_code'] = 1
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
