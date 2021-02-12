require_relative '../util/model'

module CustomViews
  class CustomView
    include Util::Model

    # Creates an instance of CustomView
    def initialize
      @id = nil
      @name = nil
      @system_name = nil
      @display_value = nil
      @shared_type = nil
      @category = nil
      @sort_by = nil
      @sort_order = nil
      @favorite = nil
      @offline = nil
      @default = nil
      @system_defined = nil
      @criteria = nil
      @shared_details = nil
      @fields = nil
      @key_modified = Hash.new
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

      # The method to get the system_name
      # @return A String value

    def system_name
      @system_name
    end

      # The method to set the value to system_name
      # @param system_name [String] A String

    def system_name=(system_name)
      if system_name!=nil and !system_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: system_name EXPECTED TYPE: String', nil, nil)
      end
      @system_name = system_name
      @key_modified['system_name'] = 1
    end

      # The method to get the display_value
      # @return A String value

    def display_value
      @display_value
    end

      # The method to set the value to display_value
      # @param display_value [String] A String

    def display_value=(display_value)
      if display_value!=nil and !display_value.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_value EXPECTED TYPE: String', nil, nil)
      end
      @display_value = display_value
      @key_modified['display_value'] = 1
    end

      # The method to get the shared_type
      # @return A String value

    def shared_type
      @shared_type
    end

      # The method to set the value to shared_type
      # @param shared_type [String] A String

    def shared_type=(shared_type)
      if shared_type!=nil and !shared_type.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shared_type EXPECTED TYPE: String', nil, nil)
      end
      @shared_type = shared_type
      @key_modified['shared_type'] = 1
    end

      # The method to get the category
      # @return A String value

    def category
      @category
    end

      # The method to set the value to category
      # @param category [String] A String

    def category=(category)
      if category!=nil and !category.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: category EXPECTED TYPE: String', nil, nil)
      end
      @category = category
      @key_modified['category'] = 1
    end

      # The method to get the sort_by
      # @return A String value

    def sort_by
      @sort_by
    end

      # The method to set the value to sort_by
      # @param sort_by [String] A String

    def sort_by=(sort_by)
      if sort_by!=nil and !sort_by.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sort_by EXPECTED TYPE: String', nil, nil)
      end
      @sort_by = sort_by
      @key_modified['sort_by'] = 1
    end

      # The method to get the sort_order
      # @return A String value

    def sort_order
      @sort_order
    end

      # The method to set the value to sort_order
      # @param sort_order [String] A String

    def sort_order=(sort_order)
      if sort_order!=nil and !sort_order.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: sort_order EXPECTED TYPE: String', nil, nil)
      end
      @sort_order = sort_order
      @key_modified['sort_order'] = 1
    end

      # The method to get the favorite
      # @return A Integer value

    def favorite
      @favorite
    end

      # The method to set the value to favorite
      # @param favorite [Integer] A Integer

    def favorite=(favorite)
      if favorite!=nil and !favorite.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: favorite EXPECTED TYPE: Integer', nil, nil)
      end
      @favorite = favorite
      @key_modified['favorite'] = 1
    end

      # The method to get the offline
      # @return A Boolean value

    def offline
      @offline
    end

      # The method to set the value to offline
      # @param offline [Boolean] A Boolean

    def offline=(offline)
      if offline!=nil and ! [true, false].include?offline
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: offline EXPECTED TYPE: Boolean', nil, nil)
      end
      @offline = offline
      @key_modified['offline'] = 1
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

      # The method to get the system_defined
      # @return A Boolean value

    def system_defined
      @system_defined
    end

      # The method to set the value to system_defined
      # @param system_defined [Boolean] A Boolean

    def system_defined=(system_defined)
      if system_defined!=nil and ! [true, false].include?system_defined
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: system_defined EXPECTED TYPE: Boolean', nil, nil)
      end
      @system_defined = system_defined
      @key_modified['system_defined'] = 1
    end

      # The method to get the criteria
      # @return An instance of Criteria

    def criteria
      @criteria
    end

      # The method to set the value to criteria
      # @param criteria [Criteria] An instance of Criteria

    def criteria=(criteria)
      if criteria!=nil and !criteria.is_a? Criteria
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: criteria EXPECTED TYPE: Criteria', nil, nil)
      end
      @criteria = criteria
      @key_modified['criteria'] = 1
    end

      # The method to get the shared_details
      # @return An instance of Array

    def shared_details
      @shared_details
    end

      # The method to set the value to shared_details
      # @param shared_details [Array] An instance of Array

    def shared_details=(shared_details)
      if shared_details!=nil and !shared_details.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shared_details EXPECTED TYPE: Array', nil, nil)
      end
      @shared_details = shared_details
      @key_modified['shared_details'] = 1
    end

      # The method to get the fields
      # @return An instance of Array

    def fields
      @fields
    end

      # The method to set the value to fields
      # @param fields [Array] An instance of Array

    def fields=(fields)
      if fields!=nil and !fields.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: fields EXPECTED TYPE: Array', nil, nil)
      end
      @fields = fields
      @key_modified['fields'] = 1
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
