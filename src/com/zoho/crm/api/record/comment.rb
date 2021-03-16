require_relative '../util/model'

module Record
  class Comment
    include Util::Model

    # Creates an instance of Comment
    def initialize
      @commented_by = nil
      @commented_time = nil
      @comment_content = nil
      @id = nil
      @key_modified = Hash.new
    end

      # The method to get the commented_by
      # @return A String value

    def commented_by
      @commented_by
    end

      # The method to set the value to commented_by
      # @param commented_by [String] A String

    def commented_by=(commented_by)
      if commented_by!=nil and !commented_by.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: commented_by EXPECTED TYPE: String', nil, nil)
      end
      @commented_by = commented_by
      @key_modified['commented_by'] = 1
    end

      # The method to get the commented_time
      # @return An instance of DateTime

    def commented_time
      @commented_time
    end

      # The method to set the value to commented_time
      # @param commented_time [DateTime] An instance of DateTime

    def commented_time=(commented_time)
      if commented_time!=nil and !commented_time.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: commented_time EXPECTED TYPE: DateTime', nil, nil)
      end
      @commented_time = commented_time
      @key_modified['commented_time'] = 1
    end

      # The method to get the comment_content
      # @return A String value

    def comment_content
      @comment_content
    end

      # The method to set the value to comment_content
      # @param comment_content [String] A String

    def comment_content=(comment_content)
      if comment_content!=nil and !comment_content.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: comment_content EXPECTED TYPE: String', nil, nil)
      end
      @comment_content = comment_content
      @key_modified['comment_content'] = 1
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
