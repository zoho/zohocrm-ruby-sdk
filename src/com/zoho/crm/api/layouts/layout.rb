require_relative '../profiles/profile'
require_relative '../users/user'
require_relative '../util/model'

module Layouts
  class Layout
    include Util::Model

    # Creates an instance of Layout
    def initialize
      @created_time = nil
      @convert_mapping = nil
      @modified_time = nil
      @visible = nil
      @created_for = nil
      @name = nil
      @modified_by = nil
      @profiles = nil
      @id = nil
      @created_by = nil
      @sections = nil
      @status = nil
      @key_modified = Hash.new
    end

      # The method to get the created_time
      # @return An instance of DateTime

    def created_time
      @created_time
    end

      # The method to set the value to created_time
      # @param created_time [DateTime] An instance of DateTime

    def created_time=(created_time)
      if created_time!=nil and !created_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
      end
      @created_time = created_time
      @key_modified['created_time'] = 1
    end

      # The method to get the convert_mapping
      # @return An instance of Hash

    def convert_mapping
      @convert_mapping
    end

      # The method to set the value to convert_mapping
      # @param convert_mapping [Hash] An instance of Hash

    def convert_mapping=(convert_mapping)
      if convert_mapping!=nil and !convert_mapping.is_a? Hash
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: convert_mapping EXPECTED TYPE: Hash', nil, nil)
      end
      @convert_mapping = convert_mapping
      @key_modified['convert_mapping'] = 1
    end

      # The method to get the modified_time
      # @return An instance of DateTime

    def modified_time
      @modified_time
    end

      # The method to set the value to modified_time
      # @param modified_time [DateTime] An instance of DateTime

    def modified_time=(modified_time)
      if modified_time!=nil and !modified_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
      end
      @modified_time = modified_time
      @key_modified['modified_time'] = 1
    end

      # The method to get the visible
      # @return A Boolean value

    def visible
      @visible
    end

      # The method to set the value to visible
      # @param visible [Boolean] A Boolean

    def visible=(visible)
      if visible!=nil and ! [true, false].include?visible
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: visible EXPECTED TYPE: Boolean', nil, nil)
      end
      @visible = visible
      @key_modified['visible'] = 1
    end

      # The method to get the created_for
      # @return An instance of Users::User

    def created_for
      @created_for
    end

      # The method to set the value to created_for
      # @param created_for [Users::User] An instance of Users::User

    def created_for=(created_for)
      if created_for!=nil and !created_for.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_for EXPECTED TYPE: User', nil, nil)
      end
      @created_for = created_for
      @key_modified['created_for'] = 1
    end

      # The method to get the name
      # @return A String value

    def name
      @name
    end

      # The method to set the value to name
      # @param name [String] A String

    def name=(name)
      if name!=nil and !name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
      end
      @name = name
      @key_modified['name'] = 1
    end

      # The method to get the modified_by
      # @return An instance of Users::User

    def modified_by
      @modified_by
    end

      # The method to set the value to modified_by
      # @param modified_by [Users::User] An instance of Users::User

    def modified_by=(modified_by)
      if modified_by!=nil and !modified_by.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: User', nil, nil)
      end
      @modified_by = modified_by
      @key_modified['modified_by'] = 1
    end

      # The method to get the profiles
      # @return An instance of Array

    def profiles
      @profiles
    end

      # The method to set the value to profiles
      # @param profiles [Array] An instance of Array

    def profiles=(profiles)
      if profiles!=nil and !profiles.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: profiles EXPECTED TYPE: Array', nil, nil)
      end
      @profiles = profiles
      @key_modified['profiles'] = 1
    end

      # The method to get the id
      # @return A Integer value

    def id
      @id
    end

      # The method to set the value to id
      # @param id [Integer] A Integer

    def id=(id)
      if id!=nil and !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      @id = id
      @key_modified['id'] = 1
    end

      # The method to get the created_by
      # @return An instance of Users::User

    def created_by
      @created_by
    end

      # The method to set the value to created_by
      # @param created_by [Users::User] An instance of Users::User

    def created_by=(created_by)
      if created_by!=nil and !created_by.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: User', nil, nil)
      end
      @created_by = created_by
      @key_modified['created_by'] = 1
    end

      # The method to get the sections
      # @return An instance of Array

    def sections
      @sections
    end

      # The method to set the value to sections
      # @param sections [Array] An instance of Array

    def sections=(sections)
      if sections!=nil and !sections.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sections EXPECTED TYPE: Array', nil, nil)
      end
      @sections = sections
      @key_modified['sections'] = 1
    end

      # The method to get the status
      # @return A Integer value

    def status
      @status
    end

      # The method to set the value to status
      # @param status [Integer] A Integer

    def status=(status)
      if status!=nil and !status.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: status EXPECTED TYPE: Integer', nil, nil)
      end
      @status = status
      @key_modified['status'] = 1
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
