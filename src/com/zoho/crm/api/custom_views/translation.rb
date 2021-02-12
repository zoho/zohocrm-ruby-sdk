require_relative '../util/model'

module CustomViews
  class Translation
    include Util::Model

    # Creates an instance of Translation
    def initialize
      @public_views = nil
      @other_users_views = nil
      @shared_with_me = nil
      @created_by_me = nil
      @key_modified = Hash.new
    end

      # The method to get the public_views
      # @return A String value

    def public_views
      @public_views
    end

      # The method to set the value to public_views
      # @param public_views [String] A String

    def public_views=(public_views)
      if public_views!=nil and !public_views.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: public_views EXPECTED TYPE: String', nil, nil)
      end
      @public_views = public_views
      @key_modified['public_views'] = 1
    end

      # The method to get the other_users_views
      # @return A String value

    def other_users_views
      @other_users_views
    end

      # The method to set the value to other_users_views
      # @param other_users_views [String] A String

    def other_users_views=(other_users_views)
      if other_users_views!=nil and !other_users_views.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: other_users_views EXPECTED TYPE: String', nil, nil)
      end
      @other_users_views = other_users_views
      @key_modified['other_users_views'] = 1
    end

      # The method to get the shared_with_me
      # @return A String value

    def shared_with_me
      @shared_with_me
    end

      # The method to set the value to shared_with_me
      # @param shared_with_me [String] A String

    def shared_with_me=(shared_with_me)
      if shared_with_me!=nil and !shared_with_me.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: shared_with_me EXPECTED TYPE: String', nil, nil)
      end
      @shared_with_me = shared_with_me
      @key_modified['shared_with_me'] = 1
    end

      # The method to get the created_by_me
      # @return A String value

    def created_by_me
      @created_by_me
    end

      # The method to set the value to created_by_me
      # @param created_by_me [String] A String

    def created_by_me=(created_by_me)
      if created_by_me!=nil and !created_by_me.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by_me EXPECTED TYPE: String', nil, nil)
      end
      @created_by_me = created_by_me
      @key_modified['created_by_me'] = 1
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
