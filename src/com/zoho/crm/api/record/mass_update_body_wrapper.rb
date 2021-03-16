require_relative '../util/model'

module Record
  class MassUpdateBodyWrapper
    include Util::Model

    # Creates an instance of MassUpdateBodyWrapper
    def initialize
      @data = nil
      @cvid = nil
      @ids = nil
      @territory = nil
      @over_write = nil
      @criteria = nil
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

      # The method to get the cvid
      # @return A String value

    def cvid
      @cvid
    end

      # The method to set the value to cvid
      # @param cvid [String] A String

    def cvid=(cvid)
      if cvid!=nil and !cvid.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: cvid EXPECTED TYPE: String', nil, nil)
      end
      @cvid = cvid
      @key_modified['cvid'] = 1
    end

      # The method to get the ids
      # @return An instance of Array

    def ids
      @ids
    end

      # The method to set the value to ids
      # @param ids [Array] An instance of Array

    def ids=(ids)
      if ids!=nil and !ids.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: ids EXPECTED TYPE: Array', nil, nil)
      end
      @ids = ids
      @key_modified['ids'] = 1
    end

      # The method to get the territory
      # @return An instance of Territory

    def territory
      @territory
    end

      # The method to set the value to territory
      # @param territory [Territory] An instance of Territory

    def territory=(territory)
      if territory!=nil and !territory.is_a? Territory
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territory EXPECTED TYPE: Territory', nil, nil)
      end
      @territory = territory
      @key_modified['territory'] = 1
    end

      # The method to get the over_write
      # @return A Boolean value

    def over_write
      @over_write
    end

      # The method to set the value to over_write
      # @param over_write [Boolean] A Boolean

    def over_write=(over_write)
      if over_write!=nil and ! [true, false].include?over_write
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: over_write EXPECTED TYPE: Boolean', nil, nil)
      end
      @over_write = over_write
      @key_modified['over_write'] = 1
    end

      # The method to get the criteria
      # @return An instance of Array

    def criteria
      @criteria
    end

      # The method to set the value to criteria
      # @param criteria [Array] An instance of Array

    def criteria=(criteria)
      if criteria!=nil and !criteria.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria EXPECTED TYPE: Array', nil, nil)
      end
      @criteria = criteria
      @key_modified['criteria'] = 1
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
