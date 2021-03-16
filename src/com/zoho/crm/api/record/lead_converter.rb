require_relative '../util/model'

module Record
  class LeadConverter
    include Util::Model

    # Creates an instance of LeadConverter
    def initialize
      @overwrite = nil
      @notify_lead_owner = nil
      @notify_new_entity_owner = nil
      @accounts = nil
      @contacts = nil
      @assign_to = nil
      @deals = nil
      @carry_over_tags = nil
      @key_modified = Hash.new
    end

      # The method to get the overwrite
      # @return A Boolean value

    def overwrite
      @overwrite
    end

      # The method to set the value to overwrite
      # @param overwrite [Boolean] A Boolean

    def overwrite=(overwrite)
      if overwrite!=nil and ! [true, false].include?overwrite
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: overwrite EXPECTED TYPE: Boolean', nil, nil)
      end
      @overwrite = overwrite
      @key_modified['overwrite'] = 1
    end

      # The method to get the notify_lead_owner
      # @return A Boolean value

    def notify_lead_owner
      @notify_lead_owner
    end

      # The method to set the value to notify_lead_owner
      # @param notify_lead_owner [Boolean] A Boolean

    def notify_lead_owner=(notify_lead_owner)
      if notify_lead_owner!=nil and ! [true, false].include?notify_lead_owner
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: notify_lead_owner EXPECTED TYPE: Boolean', nil, nil)
      end
      @notify_lead_owner = notify_lead_owner
      @key_modified['notify_lead_owner'] = 1
    end

      # The method to get the notify_new_entity_owner
      # @return A Boolean value

    def notify_new_entity_owner
      @notify_new_entity_owner
    end

      # The method to set the value to notify_new_entity_owner
      # @param notify_new_entity_owner [Boolean] A Boolean

    def notify_new_entity_owner=(notify_new_entity_owner)
      if notify_new_entity_owner!=nil and ! [true, false].include?notify_new_entity_owner
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: notify_new_entity_owner EXPECTED TYPE: Boolean', nil, nil)
      end
      @notify_new_entity_owner = notify_new_entity_owner
      @key_modified['notify_new_entity_owner'] = 1
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

      # The method to get the assign_to
      # @return A String value

    def assign_to
      @assign_to
    end

      # The method to set the value to assign_to
      # @param assign_to [String] A String

    def assign_to=(assign_to)
      if assign_to!=nil and !assign_to.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: assign_to EXPECTED TYPE: String', nil, nil)
      end
      @assign_to = assign_to
      @key_modified['assign_to'] = 1
    end

      # The method to get the deals
      # @return An instance of Record

    def deals
      @deals
    end

      # The method to set the value to deals
      # @param deals [Record] An instance of Record

    def deals=(deals)
      if deals!=nil and !deals.is_a? Record
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deals EXPECTED TYPE: Record', nil, nil)
      end
      @deals = deals
      @key_modified['Deals'] = 1
    end

      # The method to get the carry_over_tags
      # @return An instance of CarryOverTags

    def carry_over_tags
      @carry_over_tags
    end

      # The method to set the value to carry_over_tags
      # @param carry_over_tags [CarryOverTags] An instance of CarryOverTags

    def carry_over_tags=(carry_over_tags)
      if carry_over_tags!=nil and !carry_over_tags.is_a? CarryOverTags
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: carry_over_tags EXPECTED TYPE: CarryOverTags', nil, nil)
      end
      @carry_over_tags = carry_over_tags
      @key_modified['carry_over_tags'] = 1
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
