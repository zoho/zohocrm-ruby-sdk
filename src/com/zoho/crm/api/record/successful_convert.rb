require_relative '../util/model'

module Record
  require_relative 'convert_action_response'
  class SuccessfulConvert
    include Util::Model
    include ConvertActionResponse

    # Creates an instance of SuccessfulConvert
    def initialize
      @contacts = nil
      @deals = nil
      @accounts = nil
      @key_modified = Hash.new
    end

      # The method to get the contacts
      # @return A String value

    def contacts
      @contacts
    end

      # The method to set the value to contacts
      # @param contacts [String] A String

    def contacts=(contacts)
      if contacts!=nil and !contacts.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contacts EXPECTED TYPE: String', nil, nil)
      end
      @contacts = contacts
      @key_modified['Contacts'] = 1
    end

      # The method to get the deals
      # @return A String value

    def deals
      @deals
    end

      # The method to set the value to deals
      # @param deals [String] A String

    def deals=(deals)
      if deals!=nil and !deals.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deals EXPECTED TYPE: String', nil, nil)
      end
      @deals = deals
      @key_modified['Deals'] = 1
    end

      # The method to get the accounts
      # @return A String value

    def accounts
      @accounts
    end

      # The method to set the value to accounts
      # @param accounts [String] A String

    def accounts=(accounts)
      if accounts!=nil and !accounts.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: accounts EXPECTED TYPE: String', nil, nil)
      end
      @accounts = accounts
      @key_modified['Accounts'] = 1
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
