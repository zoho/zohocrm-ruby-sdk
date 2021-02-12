require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ShareRecords
  class ShareRecordsOperations

      # Creates an instance of ShareRecordsOperations with the given parameters
      # @param record_id [Integer] A Integer
      # @param module_api_name [String] A String
    def initialize(record_id, module_api_name)
      if !record_id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: record_id EXPECTED TYPE: Integer', nil, nil)
      end
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      @record_id = record_id
      @module_api_name = module_api_name
    end

      # The method to get shared record details
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @return An instance of APIResponse
    # @raise SDKException
    def get_shared_record_details(param_instance=nil)
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/actions/share'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.param = param_instance
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to share record
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def share_record(request)
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/actions/share'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to update share permissions
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def update_share_permissions(request)
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/actions/share'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_PUT
      handler_instance.category_method = 'UPDATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to revoke shared record
      # @return An instance of APIResponse
    # @raise SDKException
    def revoke_shared_record
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/actions/share'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
      require_relative 'delete_action_handler'
      handler_instance.api_call(DeleteActionHandler.name, 'application/json')
    end

    class GetSharedRecordDetailsParam
      @@sharedTo = Param.new('sharedTo', 'com.zoho.crm.api.ShareRecords.GetSharedRecordDetailsParam')
      def self.sharedTo
        @@sharedTo
      end
      @@view = Param.new('view', 'com.zoho.crm.api.ShareRecords.GetSharedRecordDetailsParam')
      def self.view
        @@view
      end
    end

  end
end
