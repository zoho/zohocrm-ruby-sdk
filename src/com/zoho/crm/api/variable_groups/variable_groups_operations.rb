require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module VariableGroups
  class VariableGroupsOperations

    # Creates an instance of VariableGroupsOperations
    def initialize
    end

      # The method to get variable groups
      # @return An instance of APIResponse
    # @raise SDKException
    def get_variable_groups
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/settings/variable_groups'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to get variable group by id
      # @param id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def get_variable_group_by_id(id)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/settings/variable_groups/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to get variable group by api name
      # @param api_name [String] A String
      # @return An instance of APIResponse
    # @raise SDKException
    def get_variable_group_by_api_name(api_name)
      if !api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: api_name EXPECTED TYPE: String', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/settings/variable_groups/'
      api_path = api_path + api_name.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

  end
end
