require_relative '../param'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module Layouts
  class LayoutsOperations

      # Creates an instance of LayoutsOperations with the given parameters
      # @param module_1 [String] A String
    def initialize(module_1=nil)
      if module_1!=nil and !module_1.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: String', nil, nil)
      end
      @module_1 = module_1
    end

      # The method to get layouts
      # @return An instance of APIResponse
    # @raise SDKException
    def get_layouts
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/settings/layouts'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.Layouts.GetLayoutsParam'), @module_1)
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to get layout
      # @param id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def get_layout(id)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/settings/layouts/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.add_param(Param.new('module', 'com.zoho.crm.api.Layouts.GetLayoutParam'), @module_1)
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

    class GetLayoutsParam
    end

    class GetLayoutParam
    end

  end
end
