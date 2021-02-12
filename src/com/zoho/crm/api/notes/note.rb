require_relative '../attachments/attachment'
require_relative '../record/record'
require_relative '../users/user'
require_relative '../util/model'

module Notes
  class Note
    include Util::Model

    # Creates an instance of Note
    def initialize
      @owner = nil
      @modified_time = nil
      @attachments = nil
      @created_time = nil
      @parent_id = nil
      @editable = nil
      @se_module = nil
      @is_shared_to_client = nil
      @modified_by = nil
      @size = nil
      @state = nil
      @voice_note = nil
      @id = nil
      @created_by = nil
      @note_title = nil
      @note_content = nil
      @key_modified = Hash.new
    end

      # The method to get the owner
      # @return An instance of Users::User

    def owner
      @owner
    end

      # The method to set the value to owner
      # @param owner [Users::User] An instance of Users::User

    def owner=(owner)
      if owner!=nil and !owner.is_a? Users::User
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: owner EXPECTED TYPE: User', nil, nil)
      end
      @owner = owner
      @key_modified['Owner'] = 1
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
      @key_modified['Modified_Time'] = 1
    end

      # The method to get the attachments
      # @return An instance of Array

    def attachments
      @attachments
    end

      # The method to set the value to attachments
      # @param attachments [Array] An instance of Array

    def attachments=(attachments)
      if attachments!=nil and !attachments.is_a? Array
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: attachments EXPECTED TYPE: Array', nil, nil)
      end
      @attachments = attachments
      @key_modified['$attachments'] = 1
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
      @key_modified['Created_Time'] = 1
    end

      # The method to get the parent_id
      # @return An instance of Record::Record

    def parent_id
      @parent_id
    end

      # The method to set the value to parent_id
      # @param parent_id [Record::Record] An instance of Record::Record

    def parent_id=(parent_id)
      if parent_id!=nil and !parent_id.is_a? Record::Record
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: parent_id EXPECTED TYPE: Record', nil, nil)
      end
      @parent_id = parent_id
      @key_modified['Parent_Id'] = 1
    end

      # The method to get the editable
      # @return A Boolean value

    def editable
      @editable
    end

      # The method to set the value to editable
      # @param editable [Boolean] A Boolean

    def editable=(editable)
      if editable!=nil and ! [true, false].include?editable
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: editable EXPECTED TYPE: Boolean', nil, nil)
      end
      @editable = editable
      @key_modified['$editable'] = 1
    end

      # The method to get the se_module
      # @return A String value

    def se_module
      @se_module
    end

      # The method to set the value to se_module
      # @param se_module [String] A String

    def se_module=(se_module)
      if se_module!=nil and !se_module.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: se_module EXPECTED TYPE: String', nil, nil)
      end
      @se_module = se_module
      @key_modified['$se_module'] = 1
    end

      # The method to get the is_shared_to_client
      # @return A Boolean value

    def is_shared_to_client
      @is_shared_to_client
    end

      # The method to set the value to is_shared_to_client
      # @param is_shared_to_client [Boolean] A Boolean

    def is_shared_to_client=(is_shared_to_client)
      if is_shared_to_client!=nil and ! [true, false].include?is_shared_to_client
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: is_shared_to_client EXPECTED TYPE: Boolean', nil, nil)
      end
      @is_shared_to_client = is_shared_to_client
      @key_modified['$is_shared_to_client'] = 1
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
      @key_modified['Modified_By'] = 1
    end

      # The method to get the size
      # @return A String value

    def size
      @size
    end

      # The method to set the value to size
      # @param size [String] A String

    def size=(size)
      if size!=nil and !size.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: size EXPECTED TYPE: String', nil, nil)
      end
      @size = size
      @key_modified['$size'] = 1
    end

      # The method to get the state
      # @return A String value

    def state
      @state
    end

      # The method to set the value to state
      # @param state [String] A String

    def state=(state)
      if state!=nil and !state.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: state EXPECTED TYPE: String', nil, nil)
      end
      @state = state
      @key_modified['$state'] = 1
    end

      # The method to get the voice_note
      # @return A Boolean value

    def voice_note
      @voice_note
    end

      # The method to set the value to voice_note
      # @param voice_note [Boolean] A Boolean

    def voice_note=(voice_note)
      if voice_note!=nil and ! [true, false].include?voice_note
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: voice_note EXPECTED TYPE: Boolean', nil, nil)
      end
      @voice_note = voice_note
      @key_modified['$voice_note'] = 1
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
      @key_modified['Created_By'] = 1
    end

      # The method to get the note_title
      # @return A String value

    def note_title
      @note_title
    end

      # The method to set the value to note_title
      # @param note_title [String] A String

    def note_title=(note_title)
      if note_title!=nil and !note_title.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: note_title EXPECTED TYPE: String', nil, nil)
      end
      @note_title = note_title
      @key_modified['Note_Title'] = 1
    end

      # The method to get the note_content
      # @return A String value

    def note_content
      @note_content
    end

      # The method to set the value to note_content
      # @param note_content [String] A String

    def note_content=(note_content)
      if note_content!=nil and !note_content.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: note_content EXPECTED TYPE: String', nil, nil)
      end
      @note_content = note_content
      @key_modified['Note_Content'] = 1
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
