require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module BulkRead
  class BulkReadOperations

    # Creates an instance of BulkReadOperations
    def initialize
    end

      # The method to get bulk read job details
      # @param job_id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def get_bulk_read_job_details(job_id)
      if !job_id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: job_id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/bulk/v2/read/'
      api_path = api_path + job_id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to download result
      # @param job_id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def download_result(job_id)
      if !job_id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: job_id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/bulk/v2/read/'
      api_path = api_path + job_id.to_s
      api_path = api_path + '/result'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/x-download')
    end

      # The method to create bulk read job
      # @param request [RequestWrapper] An instance of RequestWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def create_bulk_read_job(request)
      if request!=nil and !request.is_a? RequestWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: RequestWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/bulk/v2/read'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

  end
end
