require_relative '../users/user'
require_relative '../record/record'
require_relative '../util/model'

module Record
  class Consent < Record
    include Util::Model

    # Creates an instance of Consent
    def initialize
      super
    end

      # The method to get the owner
      # @return An instance of Users::User

    def owner
      get_key_value('Owner')
    end

      # The method to set the value to owner
      # @param owner [Users::User] An instance of Users::User

    def owner=(owner)
      if owner!=nil and !owner.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: owner EXPECTED TYPE: User', nil, nil)
      end
      add_key_value('Owner', owner)
    end

      # The method to get the contact_through_email
      # @return A Boolean value

    def contact_through_email
      get_key_value('Contact_Through_Email')
    end

      # The method to set the value to contact_through_email
      # @param contact_through_email [Boolean] A Boolean

    def contact_through_email=(contact_through_email)
      if contact_through_email!=nil and ! [true, false].include?contact_through_email
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contact_through_email EXPECTED TYPE: Boolean', nil, nil)
      end
      add_key_value('Contact_Through_Email', contact_through_email)
    end

      # The method to get the contact_through_social
      # @return A Boolean value

    def contact_through_social
      get_key_value('Contact_Through_Social')
    end

      # The method to set the value to contact_through_social
      # @param contact_through_social [Boolean] A Boolean

    def contact_through_social=(contact_through_social)
      if contact_through_social!=nil and ! [true, false].include?contact_through_social
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contact_through_social EXPECTED TYPE: Boolean', nil, nil)
      end
      add_key_value('Contact_Through_Social', contact_through_social)
    end

      # The method to get the contact_through_survey
      # @return A Boolean value

    def contact_through_survey
      get_key_value('Contact_Through_Survey')
    end

      # The method to set the value to contact_through_survey
      # @param contact_through_survey [Boolean] A Boolean

    def contact_through_survey=(contact_through_survey)
      if contact_through_survey!=nil and ! [true, false].include?contact_through_survey
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contact_through_survey EXPECTED TYPE: Boolean', nil, nil)
      end
      add_key_value('Contact_Through_Survey', contact_through_survey)
    end

      # The method to get the contact_through_phone
      # @return A Boolean value

    def contact_through_phone
      get_key_value('Contact_Through_Phone')
    end

      # The method to set the value to contact_through_phone
      # @param contact_through_phone [Boolean] A Boolean

    def contact_through_phone=(contact_through_phone)
      if contact_through_phone!=nil and ! [true, false].include?contact_through_phone
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: contact_through_phone EXPECTED TYPE: Boolean', nil, nil)
      end
      add_key_value('Contact_Through_Phone', contact_through_phone)
    end

      # The method to get the mail_sent_time
      # @return An instance of DateTime

    def mail_sent_time
      get_key_value('Mail_Sent_Time')
    end

      # The method to set the value to mail_sent_time
      # @param mail_sent_time [DateTime] An instance of DateTime

    def mail_sent_time=(mail_sent_time)
      if mail_sent_time!=nil and !mail_sent_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mail_sent_time EXPECTED TYPE: DateTime', nil, nil)
      end
      add_key_value('Mail_Sent_Time', mail_sent_time)
    end

      # The method to get the consent_date
      # @return An instance of Date

    def consent_date
      get_key_value('Consent_Date')
    end

      # The method to set the value to consent_date
      # @param consent_date [Date] An instance of Date

    def consent_date=(consent_date)
      if consent_date!=nil and !consent_date.is_a? Date
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: consent_date EXPECTED TYPE: Date', nil, nil)
      end
      add_key_value('Consent_Date', consent_date)
    end

      # The method to get the consent_remarks
      # @return A String value

    def consent_remarks
      get_key_value('Consent_Remarks')
    end

      # The method to set the value to consent_remarks
      # @param consent_remarks [String] A String

    def consent_remarks=(consent_remarks)
      if consent_remarks!=nil and !consent_remarks.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: consent_remarks EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('Consent_Remarks', consent_remarks)
    end

      # The method to get the consent_through
      # @return A String value

    def consent_through
      get_key_value('Consent_Through')
    end

      # The method to set the value to consent_through
      # @param consent_through [String] A String

    def consent_through=(consent_through)
      if consent_through!=nil and !consent_through.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: consent_through EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('Consent_Through', consent_through)
    end

      # The method to get the data_processing_basis
      # @return A String value

    def data_processing_basis
      get_key_value('Data_Processing_Basis')
    end

      # The method to set the value to data_processing_basis
      # @param data_processing_basis [String] A String

    def data_processing_basis=(data_processing_basis)
      if data_processing_basis!=nil and !data_processing_basis.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data_processing_basis EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('Data_Processing_Basis', data_processing_basis)
    end

  end
end
