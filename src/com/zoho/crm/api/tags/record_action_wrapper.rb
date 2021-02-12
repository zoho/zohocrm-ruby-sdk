require_relative '../util/model'

module Tags
  require_relative 'record_action_handler'
  class RecordActionWrapper
    include Util::Model
    include RecordActionHandler

    # Creates an instance of RecordActionWrapper
    def initialize
      @data = nil
      @wf_scheduler = nil
      @success_count = nil
      @locked_count = nil
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

      # The method to get the wf_scheduler
      # @return A Boolean value

    def wf_scheduler
      @wf_scheduler
    end

      # The method to set the value to wf_scheduler
      # @param wf_scheduler [Boolean] A Boolean

    def wf_scheduler=(wf_scheduler)
      if wf_scheduler!=nil and ! [true, false].include?wf_scheduler
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: wf_scheduler EXPECTED TYPE: Boolean', nil, nil)
      end
      @wf_scheduler = wf_scheduler
      @key_modified['wf_scheduler'] = 1
    end

      # The method to get the success_count
      # @return A String value

    def success_count
      @success_count
    end

      # The method to set the value to success_count
      # @param success_count [String] A String

    def success_count=(success_count)
      if success_count!=nil and !success_count.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: success_count EXPECTED TYPE: String', nil, nil)
      end
      @success_count = success_count
      @key_modified['success_count'] = 1
    end

      # The method to get the locked_count
      # @return A Integer value

    def locked_count
      @locked_count
    end

      # The method to set the value to locked_count
      # @param locked_count [Integer] A Integer

    def locked_count=(locked_count)
      if locked_count!=nil and !locked_count.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: locked_count EXPECTED TYPE: Integer', nil, nil)
      end
      @locked_count = locked_count
      @key_modified['locked_count'] = 1
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
