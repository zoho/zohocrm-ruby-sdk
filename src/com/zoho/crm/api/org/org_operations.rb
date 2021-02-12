require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module Org
  class OrgOperations

    # Creates an instance of OrgOperations
    def initialize
    end

      # The method to get organization
      # @return An instance of APIResponse
    # @raise SDKException
    def get_organization
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/org'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to upload organization photo
      # @param request [FileBodyWrapper] An instance of FileBodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def upload_organization_photo(request)
      if request!=nil and !request.is_a? FileBodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: FileBodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/org/photo'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'multipart/form-data'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_response'
      handler_instance.api_call(ActionResponse.name, 'application/json')
    end

  end
end
