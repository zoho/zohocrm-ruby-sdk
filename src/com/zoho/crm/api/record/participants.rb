require_relative '../record/record'
require_relative '../util/model'

module Record
  class Participants < Record
    include Util::Model

    # Creates an instance of Participants
    def initialize
      super
    end

      # The method to get the name
      # @return A String value

    def name
      get_key_value('name')
    end

      # The method to set the value to name
      # @param name [String] A String

    def name=(name)
      if name!=nil and !name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('name', name)
    end

      # The method to get the email
      # @return A String value

    def email
      get_key_value('Email')
    end

      # The method to set the value to email
      # @param email [String] A String

    def email=(email)
      if email!=nil and !email.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: email EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('Email', email)
    end

      # The method to get the invited
      # @return A Boolean value

    def invited
      get_key_value('invited')
    end

      # The method to set the value to invited
      # @param invited [Boolean] A Boolean

    def invited=(invited)
      if invited!=nil and ! [true, false].include?invited
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: invited EXPECTED TYPE: Boolean', nil, nil)
      end
      add_key_value('invited', invited)
    end

      # The method to get the type
      # @return A String value

    def type
      get_key_value('type')
    end

      # The method to set the value to type
      # @param type [String] A String

    def type=(type)
      if type!=nil and !type.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('type', type)
    end

      # The method to get the participant
      # @return A String value

    def participant
      get_key_value('participant')
    end

      # The method to set the value to participant
      # @param participant [String] A String

    def participant=(participant)
      if participant!=nil and !participant.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: participant EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('participant', participant)
    end

      # The method to get the status
      # @return A String value

    def status
      get_key_value('status')
    end

      # The method to set the value to status
      # @param status [String] A String

    def status=(status)
      if status!=nil and !status.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: String', nil, nil)
      end
      add_key_value('status', status)
    end

  end
end
