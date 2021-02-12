require_relative '../tags/tag'
require_relative '../users/user'
require_relative '../util/model'

module Record
  class Record
    include Util::Model

    # Creates an instance of Record
    def initialize
      @key_values = Hash.new
      @key_modified = Hash.new
    end

      # The method to get the id
      # @return A Integer value

    def id
      get_key_value('id')
    end

      # The method to set the value to id
      # @param id [Integer] A Integer

    def id=(id)
      if id!=nil and !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      add_key_value('id', id)
    end

      # The method to get the created_by
      # @return An instance of Users::User

    def created_by
      get_key_value('Created_By')
    end

      # The method to set the value to created_by
      # @param created_by [Users::User] An instance of Users::User

    def created_by=(created_by)
      if created_by!=nil and !created_by.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by EXPECTED TYPE: User', nil, nil)
      end
      add_key_value('Created_By', created_by)
    end

      # The method to get the created_time
      # @return An instance of DateTime

    def created_time
      get_key_value('Created_Time')
    end

      # The method to set the value to created_time
      # @param created_time [DateTime] An instance of DateTime

    def created_time=(created_time)
      if created_time!=nil and !created_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time EXPECTED TYPE: DateTime', nil, nil)
      end
      add_key_value('Created_Time', created_time)
    end

      # The method to get the modified_by
      # @return An instance of Users::User

    def modified_by
      get_key_value('Modified_By')
    end

      # The method to set the value to modified_by
      # @param modified_by [Users::User] An instance of Users::User

    def modified_by=(modified_by)
      if modified_by!=nil and !modified_by.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by EXPECTED TYPE: User', nil, nil)
      end
      add_key_value('Modified_By', modified_by)
    end

      # The method to get the modified_time
      # @return An instance of DateTime

    def modified_time
      get_key_value('Modified_Time')
    end

      # The method to set the value to modified_time
      # @param modified_time [DateTime] An instance of DateTime

    def modified_time=(modified_time)
      if modified_time!=nil and !modified_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time EXPECTED TYPE: DateTime', nil, nil)
      end
      add_key_value('Modified_Time', modified_time)
    end

      # The method to get the tag
      # @return An instance of Array

    def tag
      get_key_value('Tag')
    end

      # The method to set the value to tag
      # @param tag [Array] An instance of Array

    def tag=(tag)
      if tag!=nil and !tag.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: tag EXPECTED TYPE: Array', nil, nil)
      end
      add_key_value('Tag', tag)
    end

      # The method to add field value
      # @param field [Field] An instance of Field
      # @param value [object] A Object

    def add_field_value(field, value)
      if field!=nil and !field.is_a? Field
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: field EXPECTED TYPE: Field', nil, nil)
      end
      add_key_value(field.api_name, value)
    end

      # The method to add key value
      # @param api_name [String] A String
      # @param value [lang::Object] A lang::Object

    def add_key_value(api_name, value)
      if api_name!=nil and !api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
      end
      @key_values[api_name] = value
      @key_modified[api_name] = 1
    end

      # The method to get key value
      # @param api_name [String] A String
      # @return A lang::Object value

    def get_key_value(api_name)
      if api_name!=nil and !api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
      end
      if @key_values.key?(api_name)
        return @key_values[api_name]
      end

      nil
    end

      # The method to get key values
      # @return An instance of Hash

    def get_key_values
      @key_values
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
