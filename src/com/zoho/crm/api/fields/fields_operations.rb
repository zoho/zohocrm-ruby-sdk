require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module Fields
  class FieldsOperations

      # Creates an instance of FieldsOperations with the given parameters
      # @param module_1 [String] A String
    def initialize(module_1=nil)
      if module_1!=nil and !module_1.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
      end
      @module_1 = module_1
    end

      # The method to get fields
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @return An instance of APIResponse
    # @raise SDKException
    def get_fields(param_instance=nil)
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/settings/fields'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.Fields.GetFieldsParam'), @module_1)
      handler_instance.param = param_instance
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to get field
      # @param id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def get_field(id)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/settings/fields/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.Fields.GetFieldParam'), @module_1)
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

    class GetFieldsParam
      @@type = Param.new('type', 'com.zoho.crm.api.Fields.GetFieldsParam')
      def self.type
        @@type
      end
    end

    class GetFieldParam
    end

  end
end
