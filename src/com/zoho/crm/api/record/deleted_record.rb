require_relative '../users/user'
require_relative '../util/model'

module Record
  class DeletedRecord
    include Util::Model

    # Creates an instance of DeletedRecord
    def initialize
      @deleted_by = nil
      @id = nil
      @display_name = nil
      @type = nil
      @created_by = nil
      @deleted_time = nil
      @key_modified = Hash.new
    end

      # The method to get the deleted_by
      # @return An instance of Users::User

    def deleted_by
      @deleted_by
    end

      # The method to set the value to deleted_by
      # @param deleted_by [Users::User] An instance of Users::User

    def deleted_by=(deleted_by)
      if deleted_by!=nil and !deleted_by.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deleted_by EXPECTED TYPE: User', nil, nil)
      end
      @deleted_by = deleted_by
      @key_modified['deleted_by'] = 1
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

      # The method to get the display_name
      # @return A String value

    def display_name
      @display_name
    end

      # The method to set the value to display_name
      # @param display_name [String] A String

    def display_name=(display_name)
      if display_name!=nil and !display_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_name EXPECTED TYPE: String', nil, nil)
      end
      @display_name = display_name
      @key_modified['display_name'] = 1
    end

      # The method to get the type
      # @return A String value

    def type
      @type
    end

      # The method to set the value to type
      # @param type [String] A String

    def type=(type)
      if type!=nil and !type.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: type EXPECTED TYPE: String', nil, nil)
      end
      @type = type
      @key_modified['type'] = 1
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

      # The method to get the deleted_time
      # @return An instance of DateTime

    def deleted_time
      @deleted_time
    end

      # The method to set the value to deleted_time
      # @param deleted_time [DateTime] An instance of DateTime

    def deleted_time=(deleted_time)
      if deleted_time!=nil and !deleted_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: deleted_time EXPECTED TYPE: DateTime', nil, nil)
      end
      @deleted_time = deleted_time
      @key_modified['deleted_time'] = 1
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
