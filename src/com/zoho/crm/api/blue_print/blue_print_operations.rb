require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module BluePrint
  class BluePrintOperations

      # Creates an instance of BluePrintOperations with the given parameters
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

      # The method to get blueprint
      # @return An instance of APIResponse
    # @raise SDKException
    def get_blueprint
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/actions/blueprint'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to update blueprint
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def update_blueprint(request)
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + @module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + @record_id.to_s
      api_path = api_path + '/actions/blueprint'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_PUT
      handler_instance.category_method = 'UPDATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_response'
      handler_instance.api_call(ActionResponse.name, 'application/json')
    end

  end
end
