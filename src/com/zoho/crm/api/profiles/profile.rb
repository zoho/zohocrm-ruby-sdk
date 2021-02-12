require_relative '../users/user'
require_relative '../util/model'

module Profiles
  class Profile
    include Util::Model

    # Creates an instance of Profile
    def initialize
      @display_label = nil
      @created_time = nil
      @modified_time = nil
      @permissions_details = nil
      @name = nil
      @modified_by = nil
      @default = nil
      @description = nil
      @id = nil
      @category = nil
      @created_by = nil
      @sections = nil
      @delete = nil
      @key_modified = Hash.new
    end

      # The method to get the display_label
      # @return A String value

    def display_label
      @display_label
    end

      # The method to set the value to display_label
      # @param display_label [String] A String

    def display_label=(display_label)
      if display_label!=nil and !display_label.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_label EXPECTED TYPE: String', nil, nil)
      end
      @display_label = display_label
      @key_modified['display_label'] = 1
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

      # The method to get the permissions_details
      # @return An instance of Array

    def permissions_details
      @permissions_details
    end

      # The method to set the value to permissions_details
      # @param permissions_details [Array] An instance of Array

    def permissions_details=(permissions_details)
      if permissions_details!=nil and !permissions_details.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: permissions_details EXPECTED TYPE: Array', nil, nil)
      end
      @permissions_details = permissions_details
      @key_modified['permissions_details'] = 1
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

      # The method to get the default
      # @return A Boolean value

    def default
      @default
    end

      # The method to set the value to default
      # @param default [Boolean] A Boolean

    def default=(default)
      if default!=nil and ! [true, false].include?default
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: default EXPECTED TYPE: Boolean', nil, nil)
      end
      @default = default
      @key_modified['default'] = 1
    end

      # The method to get the description
      # @return A String value

    def description
      @description
    end

      # The method to set the value to description
      # @param description [String] A String

    def description=(description)
      if description!=nil and !description.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description EXPECTED TYPE: String', nil, nil)
      end
      @description = description
      @key_modified['description'] = 1
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

      # The method to get the category
      # @return A Boolean value

    def category
      @category
    end

      # The method to set the value to category
      # @param category [Boolean] A Boolean

    def category=(category)
      if category!=nil and ! [true, false].include?category
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: category EXPECTED TYPE: Boolean', nil, nil)
      end
      @category = category
      @key_modified['category'] = 1
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

      # The method to get the delete
      # @return A Boolean value

    def delete
      @delete
    end

      # The method to set the value to delete
      # @param delete [Boolean] A Boolean

    def delete=(delete)
      if delete!=nil and ! [true, false].include?delete
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: delete EXPECTED TYPE: Boolean', nil, nil)
      end
      @delete = delete
      @key_modified['_delete'] = 1
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
