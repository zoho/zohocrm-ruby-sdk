require_relative '../util/model'

module Record
  class BodyWrapper
    include Util::Model

    # Creates an instance of BodyWrapper
    def initialize
      @data = nil
      @trigger = nil
      @process = nil
      @duplicate_check_fields = nil
      @wf_trigger = nil
      @lar_id = nil
      @key_modified = Hash.new
    end

      # The method to get the data
      # @return An instance of Array

    def data
      @data
    end

      # The method to set the value to data
      # @param data [Array] An instance of Array

    def data=(data)
      if data!=nil and !data.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data EXPECTED TYPE: Array', nil, nil)
      end
      @data = data
      @key_modified['data'] = 1
    end

      # The method to get the trigger
      # @return An instance of Array

    def trigger
      @trigger
    end

      # The method to set the value to trigger
      # @param trigger [Array] An instance of Array

    def trigger=(trigger)
      if trigger!=nil and !trigger.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: trigger EXPECTED TYPE: Array', nil, nil)
      end
      @trigger = trigger
      @key_modified['trigger'] = 1
    end

      # The method to get the process
      # @return An instance of Array

    def process
      @process
    end

      # The method to set the value to process
      # @param process [Array] An instance of Array

    def process=(process)
      if process!=nil and !process.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: process EXPECTED TYPE: Array', nil, nil)
      end
      @process = process
      @key_modified['process'] = 1
    end

      # The method to get the duplicate_check_fields
      # @return An instance of Array

    def duplicate_check_fields
      @duplicate_check_fields
    end

      # The method to set the value to duplicate_check_fields
      # @param duplicate_check_fields [Array] An instance of Array

    def duplicate_check_fields=(duplicate_check_fields)
      if duplicate_check_fields!=nil and !duplicate_check_fields.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: duplicate_check_fields EXPECTED TYPE: Array', nil, nil)
      end
      @duplicate_check_fields = duplicate_check_fields
      @key_modified['duplicate_check_fields'] = 1
    end

      # The method to get the wf_trigger
      # @return A String value

    def wf_trigger
      @wf_trigger
    end

      # The method to set the value to wf_trigger
      # @param wf_trigger [String] A String

    def wf_trigger=(wf_trigger)
      if wf_trigger!=nil and !wf_trigger.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: wf_trigger EXPECTED TYPE: String', nil, nil)
      end
      @wf_trigger = wf_trigger
      @key_modified['wf_trigger'] = 1
    end

      # The method to get the lar_id
      # @return A String value

    def lar_id
      @lar_id
    end

      # The method to set the value to lar_id
      # @param lar_id [String] A String

    def lar_id=(lar_id)
      if lar_id!=nil and !lar_id.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: lar_id EXPECTED TYPE: String', nil, nil)
      end
      @lar_id = lar_id
      @key_modified['lar_id'] = 1
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
