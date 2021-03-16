require_relative '../util/model'

module Org
  class LicenseDetails
    include Util::Model

    # Creates an instance of LicenseDetails
    def initialize
      @paid_expiry = nil
      @users_license_purchased = nil
      @trial_type = nil
      @trial_expiry = nil
      @paid = nil
      @paid_type = nil
      @key_modified = Hash.new
    end

      # The method to get the paid_expiry
      # @return An instance of DateTime

    def paid_expiry
      @paid_expiry
    end

      # The method to set the value to paid_expiry
      # @param paid_expiry [DateTime] An instance of DateTime

    def paid_expiry=(paid_expiry)
      if paid_expiry!=nil and !paid_expiry.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: paid_expiry EXPECTED TYPE: DateTime', nil, nil)
      end
      @paid_expiry = paid_expiry
      @key_modified['paid_expiry'] = 1
    end

      # The method to get the users_license_purchased
      # @return A Integer value

    def users_license_purchased
      @users_license_purchased
    end

      # The method to set the value to users_license_purchased
      # @param users_license_purchased [Integer] A Integer

    def users_license_purchased=(users_license_purchased)
      if users_license_purchased!=nil and !users_license_purchased.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: users_license_purchased EXPECTED TYPE: Integer', nil, nil)
      end
      @users_license_purchased = users_license_purchased
      @key_modified['users_license_purchased'] = 1
    end

      # The method to get the trial_type
      # @return A String value

    def trial_type
      @trial_type
    end

      # The method to set the value to trial_type
      # @param trial_type [String] A String

    def trial_type=(trial_type)
      if trial_type!=nil and !trial_type.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: trial_type EXPECTED TYPE: String', nil, nil)
      end
      @trial_type = trial_type
      @key_modified['trial_type'] = 1
    end

      # The method to get the trial_expiry
      # @return A String value

    def trial_expiry
      @trial_expiry
    end

      # The method to set the value to trial_expiry
      # @param trial_expiry [String] A String

    def trial_expiry=(trial_expiry)
      if trial_expiry!=nil and !trial_expiry.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: trial_expiry EXPECTED TYPE: String', nil, nil)
      end
      @trial_expiry = trial_expiry
      @key_modified['trial_expiry'] = 1
    end

      # The method to get the paid
      # @return A Boolean value

    def paid
      @paid
    end

      # The method to set the value to paid
      # @param paid [Boolean] A Boolean

    def paid=(paid)
      if paid!=nil and ! [true, false].include?paid
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: paid EXPECTED TYPE: Boolean', nil, nil)
      end
      @paid = paid
      @key_modified['paid'] = 1
    end

      # The method to get the paid_type
      # @return A String value

    def paid_type
      @paid_type
    end

      # The method to set the value to paid_type
      # @param paid_type [String] A String

    def paid_type=(paid_type)
      if paid_type!=nil and !paid_type.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: paid_type EXPECTED TYPE: String', nil, nil)
      end
      @paid_type = paid_type
      @key_modified['paid_type'] = 1
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
