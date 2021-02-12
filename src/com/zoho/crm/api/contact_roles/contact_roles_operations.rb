require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module ContactRoles
  class ContactRolesOperations

    # Creates an instance of ContactRolesOperations
    def initialize
    end

      # The method to get contact roles
      # @return An instance of APIResponse
    # @raise SDKException
    def get_contact_roles
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/Contacts/roles'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to create contact roles
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def create_contact_roles(request)
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/Contacts/roles'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to update contact roles
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def update_contact_roles(request)
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/Contacts/roles'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_PUT
      handler_instance.category_method = 'UPDATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to delete contact roles
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @return An instance of APIResponse
    # @raise SDKException
    def delete_contact_roles(param_instance=nil)
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/Contacts/roles'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.param = param_instance
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to get contact role
      # @param id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def get_contact_role(id)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/Contacts/roles/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to update contact role
      # @param id [Integer] A Integer
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def update_contact_role(id, request)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/Contacts/roles/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_PUT
      handler_instance.category_method = 'UPDATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to delete contact role
      # @param id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def delete_contact_role(id)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/Contacts/roles/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

    class DeleteContactRolesParam
      @@ids = Param.new('ids', 'com.zoho.crm.api.ContactRoles.DeleteContactRolesParam')
      def self.ids
        @@ids
      end
    end

  end
end
