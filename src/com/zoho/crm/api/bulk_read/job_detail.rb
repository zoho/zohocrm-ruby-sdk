require_relative '../users/user'
require_relative '../util/choice'
require_relative '../util/model'

module BulkRead
  class JobDetail
    include Util::Model

    # Creates an instance of JobDetail
    def initialize
      @id = nil
      @operation = nil
      @state = nil
      @query = nil
      @created_by = nil
      @created_time = nil
      @result = nil
      @file_type = nil
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

      # The method to get the operation
      # @return A String value

    def operation
      @operation
    end

      # The method to set the value to operation
      # @param operation [String] A String

    def operation=(operation)
      if operation!=nil and !operation.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: operation EXPECTED TYPE: String', nil, nil)
      end
      @operation = operation
      @key_modified['operation'] = 1
    end

      # The method to get the state
      # @return An instance of Util::Choice

    def state
      @state
    end

      # The method to set the value to state
      # @param state [Util::Choice] An instance of Util::Choice

    def state=(state)
      if state!=nil and !state.is_a? Util::Choice
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state EXPECTED TYPE: Util::Choice', nil, nil)
      end
      @state = state
      @key_modified['state'] = 1
    end

      # The method to get the query
      # @return An instance of Query

    def query
      @query
    end

      # The method to set the value to query
      # @param query [Query] An instance of Query

    def query=(query)
      if query!=nil and !query.is_a? Query
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: query EXPECTED TYPE: Query', nil, nil)
      end
      @query = query
      @key_modified['query'] = 1
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

      # The method to get the result
      # @return An instance of Result

    def result
      @result
    end

      # The method to set the value to result
      # @param result [Result] An instance of Result

    def result=(result)
      if result!=nil and !result.is_a? Result
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: result EXPECTED TYPE: Result', nil, nil)
      end
      @result = result
      @key_modified['result'] = 1
    end

      # The method to get the file_type
      # @return A String value

    def file_type
      @file_type
    end

      # The method to set the value to file_type
      # @param file_type [String] A String

    def file_type=(file_type)
      if file_type!=nil and !file_type.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_type EXPECTED TYPE: String', nil, nil)
      end
      @file_type = file_type
      @key_modified['file_type'] = 1
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
