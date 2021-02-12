require_relative '../util/model'

module Record
  class CarryOverTags
    include Util::Model

    # Creates an instance of CarryOverTags
    def initialize
      @contacts = nil
      @accounts = nil
      @deals = nil
      @key_modified = Hash.new
    end

      # The method to get the contacts
      # @return An instance of Array

    def contacts
      @contacts
    end

      # The method to set the value to contacts
      # @param contacts [Array] An instance of Array

    def contacts=(contacts)
      if contacts!=nil and !contacts.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contacts EXPECTED TYPE: Array', nil, nil)
      end
      @contacts = contacts
      @key_modified['Contacts'] = 1
    end

      # The method to get the accounts
      # @return An instance of Array

    def accounts
      @accounts
    end

      # The method to set the value to accounts
      # @param accounts [Array] An instance of Array

    def accounts=(accounts)
      if accounts!=nil and !accounts.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: accounts EXPECTED TYPE: Array', nil, nil)
      end
      @accounts = accounts
      @key_modified['Accounts'] = 1
    end

      # The method to get the deals
      # @return An instance of Array

    def deals
      @deals
    end

      # The method to set the value to deals
      # @param deals [Array] An instance of Array

    def deals=(deals)
      if deals!=nil and !deals.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deals EXPECTED TYPE: Array', nil, nil)
      end
      @deals = deals
      @key_modified['Deals'] = 1
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
