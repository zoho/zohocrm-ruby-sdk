require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module Notification
  class NotificationOperations

    # Creates an instance of NotificationOperations
    def initialize
    end

      # The method to enable notifications
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def enable_notifications(request)
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/actions/watch'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to get notification details
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @return An instance of APIResponse
    # @raise SDKException
    def get_notification_details(param_instance=nil)
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/actions/watch'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.param = param_instance
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to update notifications
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def update_notifications(request)
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/actions/watch'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_PUT
      handler_instance.category_method = 'UPDATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to update notification
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def update_notification(request)
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/actions/watch'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_PATCH
      handler_instance.category_method = 'UPDATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to disable notifications
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @return An instance of APIResponse
    # @raise SDKException
    def disable_notifications(param_instance=nil)
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/actions/watch'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.param = param_instance
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to disable notification
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def disable_notification(request)
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/actions/watch'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_PATCH
      handler_instance.category_method = 'UPDATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

    class GetNotificationDetailsParam
      @@page = Param.new('page', 'com.zoho.crm.api.Notification.GetNotificationDetailsParam')
      def self.page
        @@page
      end
      @@per_page = Param.new('per_page', 'com.zoho.crm.api.Notification.GetNotificationDetailsParam')
      def self.per_page
        @@per_page
      end
      @@channel_id = Param.new('channel_id', 'com.zoho.crm.api.Notification.GetNotificationDetailsParam')
      def self.channel_id
        @@channel_id
      end
      @@module_1 = Param.new('module', 'com.zoho.crm.api.Notification.GetNotificationDetailsParam')
      def self.module_1
        @@module_1
      end
    end

    class DisableNotificationsParam
      @@channel_ids = Param.new('channel_ids', 'com.zoho.crm.api.Notification.DisableNotificationsParam')
      def self.channel_ids
        @@channel_ids
      end
    end

  end
end
