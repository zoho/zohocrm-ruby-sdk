require_relative '../header'
require_relative '../header_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module BulkWrite
  class BulkWriteOperations

    # Creates an instance of BulkWriteOperations
    def initialize
    end

      # The method to upload file
      # @param request [FileBodyWrapper] An instance of FileBodyWrapper
      # @param header_instance [HeaderMap] An instance of HeaderMap
      # @return An instance of APIResponse
    # @raise SDKException
    def upload_file(request, header_instance=nil)
      if request!=nil and !request.is_a? FileBodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: FileBodyWrapper', nil, nil)
      end
      if header_instance!=nil and !header_instance.is_a? HeaderMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + 'https://content.zohoapis.com/crm/v2/upload'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'multipart/form-data'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      handler_instance.header = header_instance
      require_relative 'action_response'
      handler_instance.api_call(ActionResponse.name, 'application/json')
    end

      # The method to create bulk write job
      # @param request [RequestWrapper] An instance of RequestWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def create_bulk_write_job(request)
      if request!=nil and !request.is_a? RequestWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: RequestWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/bulk/v2/write'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      require_relative 'action_response'
      handler_instance.api_call(ActionResponse.name, 'application/json')
    end

      # The method to get bulk write job details
      # @param job_id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def get_bulk_write_job_details(job_id)
      if !job_id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: job_id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/bulk/v2/write/'
      api_path = api_path + job_id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_wrapper'
      handler_instance.api_call(ResponseWrapper.name, 'application/json')
    end

      # The method to download bulk write result
      # @param download_url [String] A String
      # @return An instance of APIResponse
    # @raise SDKException
    def download_bulk_write_result(download_url)
      if !download_url.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: download_url EXPECTED TYPE: String', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/'
      api_path = api_path + download_url.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/octet-stream')
    end

    class UploadFileHeader
      @@feature = Header.new('feature', 'com.zoho.crm.api.BulkWrite.UploadFileHeader')
      def self.feature
        @@feature
      end
      @@X_crm_org = Header.new('X-CRM-ORG', 'com.zoho.crm.api.BulkWrite.UploadFileHeader')
      def self.X_crm_org
        @@X_crm_org
      end
    end

  end
end
