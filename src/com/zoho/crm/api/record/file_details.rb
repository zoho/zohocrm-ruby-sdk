require_relative '../util/model'

module Record
  class FileDetails
    include Util::Model

    # Creates an instance of FileDetails
    def initialize
      @extn = nil
      @is_preview_available = nil
      @download_url = nil
      @delete_url = nil
      @entity_id = nil
      @mode = nil
      @original_size_byte = nil
      @preview_url = nil
      @file_name = nil
      @file_id = nil
      @attachment_id = nil
      @file_size = nil
      @creator_id = nil
      @link_docs = nil
      @delete = nil
      @key_modified = Hash.new
    end

      # The method to get the extn
      # @return A String value

    def extn
      @extn
    end

      # The method to set the value to extn
      # @param extn [String] A String

    def extn=(extn)
      if extn!=nil and !extn.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: extn EXPECTED TYPE: String', nil, nil)
      end
      @extn = extn
      @key_modified['extn'] = 1
    end

      # The method to get the is_preview_available
      # @return A Boolean value

    def is_preview_available
      @is_preview_available
    end

      # The method to set the value to is_preview_available
      # @param is_preview_available [Boolean] A Boolean

    def is_preview_available=(is_preview_available)
      if is_preview_available!=nil and ! [true, false].include?is_preview_available
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: is_preview_available EXPECTED TYPE: Boolean', nil, nil)
      end
      @is_preview_available = is_preview_available
      @key_modified['is_Preview_Available'] = 1
    end

      # The method to get the download_url
      # @return A String value

    def download_url
      @download_url
    end

      # The method to set the value to download_url
      # @param download_url [String] A String

    def download_url=(download_url)
      if download_url!=nil and !download_url.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: download_url EXPECTED TYPE: String', nil, nil)
      end
      @download_url = download_url
      @key_modified['download_Url'] = 1
    end

      # The method to get the delete_url
      # @return A String value

    def delete_url
      @delete_url
    end

      # The method to set the value to delete_url
      # @param delete_url [String] A String

    def delete_url=(delete_url)
      if delete_url!=nil and !delete_url.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: delete_url EXPECTED TYPE: String', nil, nil)
      end
      @delete_url = delete_url
      @key_modified['delete_Url'] = 1
    end

      # The method to get the entity_id
      # @return A String value

    def entity_id
      @entity_id
    end

      # The method to set the value to entity_id
      # @param entity_id [String] A String

    def entity_id=(entity_id)
      if entity_id!=nil and !entity_id.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: entity_id EXPECTED TYPE: String', nil, nil)
      end
      @entity_id = entity_id
      @key_modified['entity_Id'] = 1
    end

      # The method to get the mode
      # @return A String value

    def mode
      @mode
    end

      # The method to set the value to mode
      # @param mode [String] A String

    def mode=(mode)
      if mode!=nil and !mode.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: mode EXPECTED TYPE: String', nil, nil)
      end
      @mode = mode
      @key_modified['mode'] = 1
    end

      # The method to get the original_size_byte
      # @return A String value

    def original_size_byte
      @original_size_byte
    end

      # The method to set the value to original_size_byte
      # @param original_size_byte [String] A String

    def original_size_byte=(original_size_byte)
      if original_size_byte!=nil and !original_size_byte.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: original_size_byte EXPECTED TYPE: String', nil, nil)
      end
      @original_size_byte = original_size_byte
      @key_modified['original_Size_Byte'] = 1
    end

      # The method to get the preview_url
      # @return A String value

    def preview_url
      @preview_url
    end

      # The method to set the value to preview_url
      # @param preview_url [String] A String

    def preview_url=(preview_url)
      if preview_url!=nil and !preview_url.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: preview_url EXPECTED TYPE: String', nil, nil)
      end
      @preview_url = preview_url
      @key_modified['preview_Url'] = 1
    end

      # The method to get the file_name
      # @return A String value

    def file_name
      @file_name
    end

      # The method to set the value to file_name
      # @param file_name [String] A String

    def file_name=(file_name)
      if file_name!=nil and !file_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_name EXPECTED TYPE: String', nil, nil)
      end
      @file_name = file_name
      @key_modified['file_Name'] = 1
    end

      # The method to get the file_id
      # @return A String value

    def file_id
      @file_id
    end

      # The method to set the value to file_id
      # @param file_id [String] A String

    def file_id=(file_id)
      if file_id!=nil and !file_id.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_id EXPECTED TYPE: String', nil, nil)
      end
      @file_id = file_id
      @key_modified['file_Id'] = 1
    end

      # The method to get the attachment_id
      # @return A String value

    def attachment_id
      @attachment_id
    end

      # The method to set the value to attachment_id
      # @param attachment_id [String] A String

    def attachment_id=(attachment_id)
      if attachment_id!=nil and !attachment_id.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: attachment_id EXPECTED TYPE: String', nil, nil)
      end
      @attachment_id = attachment_id
      @key_modified['attachment_Id'] = 1
    end

      # The method to get the file_size
      # @return A String value

    def file_size
      @file_size
    end

      # The method to set the value to file_size
      # @param file_size [String] A String

    def file_size=(file_size)
      if file_size!=nil and !file_size.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: file_size EXPECTED TYPE: String', nil, nil)
      end
      @file_size = file_size
      @key_modified['file_Size'] = 1
    end

      # The method to get the creator_id
      # @return A String value

    def creator_id
      @creator_id
    end

      # The method to set the value to creator_id
      # @param creator_id [String] A String

    def creator_id=(creator_id)
      if creator_id!=nil and !creator_id.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: creator_id EXPECTED TYPE: String', nil, nil)
      end
      @creator_id = creator_id
      @key_modified['creator_Id'] = 1
    end

      # The method to get the link_docs
      # @return A Integer value

    def link_docs
      @link_docs
    end

      # The method to set the value to link_docs
      # @param link_docs [Integer] A Integer

    def link_docs=(link_docs)
      if link_docs!=nil and !link_docs.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: link_docs EXPECTED TYPE: Integer', nil, nil)
      end
      @link_docs = link_docs
      @key_modified['link_Docs'] = 1
    end

      # The method to get the delete
      # @return A String value

    def delete
      @delete
    end

      # The method to set the value to delete
      # @param delete [String] A String

    def delete=(delete)
      if delete!=nil and !delete.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: delete EXPECTED TYPE: String', nil, nil)
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
