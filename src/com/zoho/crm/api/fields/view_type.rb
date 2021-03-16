require_relative '../util/model'

module Fields
  class ViewType
    include Util::Model

    # Creates an instance of ViewType
    def initialize
      @view = nil
      @edit = nil
      @create = nil
      @quick_create = nil
      @key_modified = Hash.new
    end

      # The method to get the view
      # @return A Boolean value

    def view
      @view
    end

      # The method to set the value to view
      # @param view [Boolean] A Boolean

    def view=(view)
      if view!=nil and ! [true, false].include?view
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: view EXPECTED TYPE: Boolean', nil, nil)
      end
      @view = view
      @key_modified['view'] = 1
    end

      # The method to get the edit
      # @return A Boolean value

    def edit
      @edit
    end

      # The method to set the value to edit
      # @param edit [Boolean] A Boolean

    def edit=(edit)
      if edit!=nil and ! [true, false].include?edit
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: edit EXPECTED TYPE: Boolean', nil, nil)
      end
      @edit = edit
      @key_modified['edit'] = 1
    end

      # The method to get the create
      # @return A Boolean value

    def create
      @create
    end

      # The method to set the value to create
      # @param create [Boolean] A Boolean

    def create=(create)
      if create!=nil and ! [true, false].include?create
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: create EXPECTED TYPE: Boolean', nil, nil)
      end
      @create = create
      @key_modified['create'] = 1
    end

      # The method to get the quick_create
      # @return A Boolean value

    def quick_create
      @quick_create
    end

      # The method to set the value to quick_create
      # @param quick_create [Boolean] A Boolean

    def quick_create=(quick_create)
      if quick_create!=nil and ! [true, false].include?quick_create
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: quick_create EXPECTED TYPE: Boolean', nil, nil)
      end
      @quick_create = quick_create
      @key_modified['quick_create'] = 1
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
