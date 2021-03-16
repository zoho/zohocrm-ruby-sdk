require_relative '../record/record'
require_relative '../util/model'

module BluePrint
  class BluePrint
    include Util::Model

    # Creates an instance of BluePrint
    def initialize
      @transition_id = nil
      @data = nil
      @process_info = nil
      @transitions = nil
      @key_modified = Hash.new
    end

      # The method to get the transition_id
      # @return A Integer value

    def transition_id
      @transition_id
    end

      # The method to set the value to transition_id
      # @param transition_id [Integer] A Integer

    def transition_id=(transition_id)
      if transition_id!=nil and !transition_id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: transition_id EXPECTED TYPE: Integer', nil, nil)
      end
      @transition_id = transition_id
      @key_modified['transition_id'] = 1
    end

      # The method to get the data
      # @return An instance of Record::Record

    def data
      @data
    end

      # The method to set the value to data
      # @param data [Record::Record] An instance of Record::Record

    def data=(data)
      if data!=nil and !data.is_a? Record::Record
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: data EXPECTED TYPE: Record', nil, nil)
      end
      @data = data
      @key_modified['data'] = 1
    end

      # The method to get the process_info
      # @return An instance of ProcessInfo

    def process_info
      @process_info
    end

      # The method to set the value to process_info
      # @param process_info [ProcessInfo] An instance of ProcessInfo

    def process_info=(process_info)
      if process_info!=nil and !process_info.is_a? ProcessInfo
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: process_info EXPECTED TYPE: ProcessInfo', nil, nil)
      end
      @process_info = process_info
      @key_modified['process_info'] = 1
    end

      # The method to get the transitions
      # @return An instance of Array

    def transitions
      @transitions
    end

      # The method to set the value to transitions
      # @param transitions [Array] An instance of Array

    def transitions=(transitions)
      if transitions!=nil and !transitions.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: transitions EXPECTED TYPE: Array', nil, nil)
      end
      @transitions = transitions
      @key_modified['transitions'] = 1
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
