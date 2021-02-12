require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module Attachments
  class AttachmentsOperations

      # Creates an instance of AttachmentsOperations with the given parameters
      # @param module_api_name [String] A String
      # @param record_id [Integer] A Integer
    def initialize(module_api_name, record_id)
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if !record_id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
      end
      @module_api_name = module_api_name
      @record_id = record_id
    end

      # The method to download attachment
      # @param id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def download_attachment(id)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/Attachments/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/x-download')
    end

      # The method to delete attachment
      # @param id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def delete_attachment(id)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/Attachments/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to get attachments
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @return An instance of APIResponse
    # @raise SDKException
    def get_attachments(param_instance=nil)
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/Attachments'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.param = param_instance
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to upload attachment
      # @param request [FileBodyWrapper] An instance of FileBodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def upload_attachment(request)
      if request!=nil and !request.is_a? FileBodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: FileBodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/Attachments'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'multipart/form-data'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to upload link attachment
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @return An instance of APIResponse
    # @raise SDKException
    def upload_link_attachment(param_instance=nil)
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/Attachments'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.mandatory_checker = true
      handler_instance.param = param_instance
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to delete attachments
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @return An instance of APIResponse
    # @raise SDKException
    def delete_attachments(param_instance=nil)
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/Attachments'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.param = param_instance
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

    class GetAttachmentsParam
      @@fields = Param.new('fields', 'com.zoho.crm.api.Attachments.GetAttachmentsParam')
      def self.fields
        @@fields
      end
      @@page = Param.new('page', 'com.zoho.crm.api.Attachments.GetAttachmentsParam')
      def self.page
        @@page
      end
      @@per_page = Param.new('per_page', 'com.zoho.crm.api.Attachments.GetAttachmentsParam')
      def self.per_page
        @@per_page
      end
    end

    class UploadLinkAttachmentParam
      @@attachmentUrl = Param.new('attachmentUrl', 'com.zoho.crm.api.Attachments.UploadLinkAttachmentParam')
      def self.attachmentUrl
        @@attachmentUrl
      end
    end

    class DeleteAttachmentsParam
      @@ids = Param.new('ids', 'com.zoho.crm.api.Attachments.DeleteAttachmentsParam')
      def self.ids
        @@ids
      end
    end

  end
end
