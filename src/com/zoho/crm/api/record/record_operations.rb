require_relative '../header'
require_relative '../header_map'
require_relative '../param'
require_relative '../parameter_map'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/utility'
require_relative '../util/constants'

module Record
  class RecordOperations

    # Creates an instance of RecordOperations
    def initialize
    end

      # The method to get record
      # @param id [Integer] A Integer
      # @param module_api_name [String] A String
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @param header_instance [HeaderMap] An instance of HeaderMap
      # @return An instance of APIResponse
    # @raise SDKException
    def get_record(id, module_api_name, param_instance=nil, header_instance=nil)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      if header_instance!=nil and !header_instance.is_a? HeaderMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.param = param_instance
      handler_instance.header = header_instance
      Util::Utility.get_fields(module_api_name)
      handler_instance.module_api_name = module_api_name
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to update record
      # @param id [Integer] A Integer
      # @param module_api_name [String] A String
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @param header_instance [HeaderMap] An instance of HeaderMap
      # @return An instance of APIResponse
    # @raise SDKException
    def update_record(id, module_api_name, request, header_instance=nil)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      if header_instance!=nil and !header_instance.is_a? HeaderMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_PUT
      handler_instance.category_method = 'UPDATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.header = header_instance
      Util::Utility.get_fields(module_api_name)
      handler_instance.module_api_name = module_api_name
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to delete record
      # @param id [Integer] A Integer
      # @param module_api_name [String] A String
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @param header_instance [HeaderMap] An instance of HeaderMap
      # @return An instance of APIResponse
    # @raise SDKException
    def delete_record(id, module_api_name, param_instance=nil, header_instance=nil)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      if header_instance!=nil and !header_instance.is_a? HeaderMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.param = param_instance
      handler_instance.header = header_instance
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to get records
      # @param module_api_name [String] A String
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @param header_instance [HeaderMap] An instance of HeaderMap
      # @return An instance of APIResponse
    # @raise SDKException
    def get_records(module_api_name, param_instance=nil, header_instance=nil)
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      if header_instance!=nil and !header_instance.is_a? HeaderMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.param = param_instance
      handler_instance.header = header_instance
      Util::Utility.get_fields(module_api_name)
      handler_instance.module_api_name = module_api_name
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to create records
      # @param module_api_name [String] A String
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def create_records(module_api_name, request)
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      Util::Utility.get_fields(module_api_name)
      handler_instance.module_api_name = module_api_name
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to update records
      # @param module_api_name [String] A String
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @param header_instance [HeaderMap] An instance of HeaderMap
      # @return An instance of APIResponse
    # @raise SDKException
    def update_records(module_api_name, request, header_instance=nil)
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      if header_instance!=nil and !header_instance.is_a? HeaderMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_PUT
      handler_instance.category_method = 'UPDATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      handler_instance.header = header_instance
      Util::Utility.get_fields(module_api_name)
      handler_instance.module_api_name = module_api_name
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to delete records
      # @param module_api_name [String] A String
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @param header_instance [HeaderMap] An instance of HeaderMap
      # @return An instance of APIResponse
    # @raise SDKException
    def delete_records(module_api_name, param_instance=nil, header_instance=nil)
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      if header_instance!=nil and !header_instance.is_a? HeaderMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.param = param_instance
      handler_instance.header = header_instance
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to upsert records
      # @param module_api_name [String] A String
      # @param request [BodyWrapper] An instance of BodyWrapper
      # @param header_instance [HeaderMap] An instance of HeaderMap
      # @return An instance of APIResponse
    # @raise SDKException
    def upsert_records(module_api_name, request, header_instance=nil)
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if request!=nil and !request.is_a? BodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: BodyWrapper', nil, nil)
      end
      if header_instance!=nil and !header_instance.is_a? HeaderMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/upsert'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'ACTION'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.header = header_instance
      Util::Utility.get_fields(module_api_name)
      handler_instance.module_api_name = module_api_name
      require_relative 'action_handler'
      handler_instance.api_call(ActionHandler.name, 'application/json')
    end

      # The method to get deleted records
      # @param module_api_name [String] A String
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @param header_instance [HeaderMap] An instance of HeaderMap
      # @return An instance of APIResponse
    # @raise SDKException
    def get_deleted_records(module_api_name, param_instance=nil, header_instance=nil)
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      if header_instance!=nil and !header_instance.is_a? HeaderMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/deleted'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.param = param_instance
      handler_instance.header = header_instance
      require_relative 'deleted_records_handler'
      handler_instance.api_call(DeletedRecordsHandler.name, 'application/json')
    end

      # The method to search records
      # @param module_api_name [String] A String
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @param header_instance [HeaderMap] An instance of HeaderMap
      # @return An instance of APIResponse
    # @raise SDKException
    def search_records(module_api_name, param_instance=nil, header_instance=nil)
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      if header_instance!=nil and !header_instance.is_a? HeaderMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: header_instance EXPECTED TYPE: HeaderMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/search'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.param = param_instance
      handler_instance.header = header_instance
      Util::Utility.get_fields(module_api_name)
      handler_instance.module_api_name = module_api_name
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to convert lead
      # @param id [Integer] A Integer
      # @param request [ConvertBodyWrapper] An instance of ConvertBodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def convert_lead(id, request)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      if request!=nil and !request.is_a? ConvertBodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: ConvertBodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/Leads/'
      api_path = api_path + id.to_s
      api_path = api_path + '/actions/convert'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      Util::Utility.get_fields("Deals")
      require_relative 'convert_action_handler'
      handler_instance.api_call(ConvertActionHandler.name, 'application/json')
    end

      # The method to get photo
      # @param id [Integer] A Integer
      # @param module_api_name [String] A String
      # @return An instance of APIResponse
    # @raise SDKException
    def get_photo(id, module_api_name)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + id.to_s
      api_path = api_path + '/photo'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      require_relative 'download_handler'
      handler_instance.api_call(DownloadHandler.name, 'application/x-download')
    end

      # The method to upload photo
      # @param id [Integer] A Integer
      # @param module_api_name [String] A String
      # @param request [FileBodyWrapper] An instance of FileBodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def upload_photo(id, module_api_name, request)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if request!=nil and !request.is_a? FileBodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: FileBodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + id.to_s
      api_path = api_path + '/photo'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'CREATE'
      handler_instance.content_type = 'multipart/form-data'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      Util::Utility.verify_photo_support(module_api_name)
      require_relative 'file_handler'
      handler_instance.api_call(FileHandler.name, 'application/json')
    end

      # The method to delete photo
      # @param id [Integer] A Integer
      # @param module_api_name [String] A String
      # @return An instance of APIResponse
    # @raise SDKException
    def delete_photo(id, module_api_name)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/'
      api_path = api_path + id.to_s
      api_path = api_path + '/photo'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_DELETE
      handler_instance.category_method = Constants::REQUEST_METHOD_DELETE
      require_relative 'file_handler'
      handler_instance.api_call(FileHandler.name, 'application/json')
    end

      # The method to mass update records
      # @param module_api_name [String] A String
      # @param request [MassUpdateBodyWrapper] An instance of MassUpdateBodyWrapper
      # @return An instance of APIResponse
    # @raise SDKException
    def mass_update_records(module_api_name, request)
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if request!=nil and !request.is_a? MassUpdateBodyWrapper
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: request EXPECTED TYPE: MassUpdateBodyWrapper', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/actions/mass_update'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_POST
      handler_instance.category_method = 'UPDATE'
      handler_instance.content_type = 'application/json'
      handler_instance.request = request
      handler_instance.mandatory_checker = true
      Util::Utility.get_fields(module_api_name)
      handler_instance.module_api_name = module_api_name
      require_relative 'mass_update_action_handler'
      handler_instance.api_call(MassUpdateActionHandler.name, 'application/json')
    end

      # The method to get mass update status
      # @param module_api_name [String] A String
      # @param param_instance [ParameterMap] An instance of ParameterMap
      # @return An instance of APIResponse
    # @raise SDKException
    def get_mass_update_status(module_api_name, param_instance=nil)
      if !module_api_name.is_a? String
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_api_name EXPECTED TYPE: String', nil, nil)
      end
      if param_instance!=nil and !param_instance.is_a? ParameterMap
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: param_instance EXPECTED TYPE: ParameterMap', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/'
      api_path = api_path + module_api_name.to_s
      api_path = api_path + '/actions/mass_update'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.param = param_instance
      require_relative 'mass_update_response_handler'
      handler_instance.api_call(MassUpdateResponseHandler.name, 'application/json')
    end

    class GetRecordParam
      @@approved = Param.new('approved', 'com.zoho.crm.api.Record.GetRecordParam')
      def self.approved
        @@approved
      end
      @@converted = Param.new('converted', 'com.zoho.crm.api.Record.GetRecordParam')
      def self.converted
        @@converted
      end
      @@cvid = Param.new('cvid', 'com.zoho.crm.api.Record.GetRecordParam')
      def self.cvid
        @@cvid
      end
      @@uid = Param.new('uid', 'com.zoho.crm.api.Record.GetRecordParam')
      def self.uid
        @@uid
      end
      @@fields = Param.new('fields', 'com.zoho.crm.api.Record.GetRecordParam')
      def self.fields
        @@fields
      end
      @@startDateTime = Param.new('startDateTime', 'com.zoho.crm.api.Record.GetRecordParam')
      def self.startDateTime
        @@startDateTime
      end
      @@endDateTime = Param.new('endDateTime', 'com.zoho.crm.api.Record.GetRecordParam')
      def self.endDateTime
        @@endDateTime
      end
      @@territory_id = Param.new('territory_id', 'com.zoho.crm.api.Record.GetRecordParam')
      def self.territory_id
        @@territory_id
      end
      @@include_child = Param.new('include_child', 'com.zoho.crm.api.Record.GetRecordParam')
      def self.include_child
        @@include_child
      end
    end

    class GetRecordHeader
      @@If_modified_since = Header.new('If-Modified-Since', 'com.zoho.crm.api.Record.GetRecordHeader')
      def self.If_modified_since
        @@If_modified_since
      end
      @@X_external = Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.GetRecordHeader')
      def self.X_external
        @@X_external
      end
    end

    class UpdateRecordHeader
      @@X_external = Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.UpdateRecordHeader')
      def self.X_external
        @@X_external
      end
    end

    class DeleteRecordParam
      @@wf_trigger = Param.new('wf_trigger', 'com.zoho.crm.api.Record.DeleteRecordParam')
      def self.wf_trigger
        @@wf_trigger
      end
    end

    class DeleteRecordHeader
      @@X_external = Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.DeleteRecordHeader')
      def self.X_external
        @@X_external
      end
    end

    class GetRecordsParam
      @@approved = Param.new('approved', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.approved
        @@approved
      end
      @@converted = Param.new('converted', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.converted
        @@converted
      end
      @@cvid = Param.new('cvid', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.cvid
        @@cvid
      end
      @@ids = Param.new('ids', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.ids
        @@ids
      end
      @@uid = Param.new('uid', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.uid
        @@uid
      end
      @@fields = Param.new('fields', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.fields
        @@fields
      end
      @@sort_by = Param.new('sort_by', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.sort_by
        @@sort_by
      end
      @@sort_order = Param.new('sort_order', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.sort_order
        @@sort_order
      end
      @@page = Param.new('page', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.page
        @@page
      end
      @@per_page = Param.new('per_page', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.per_page
        @@per_page
      end
      @@startDateTime = Param.new('startDateTime', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.startDateTime
        @@startDateTime
      end
      @@endDateTime = Param.new('endDateTime', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.endDateTime
        @@endDateTime
      end
      @@territory_id = Param.new('territory_id', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.territory_id
        @@territory_id
      end
      @@include_child = Param.new('include_child', 'com.zoho.crm.api.Record.GetRecordsParam')
      def self.include_child
        @@include_child
      end
    end

    class GetRecordsHeader
      @@If_modified_since = Header.new('If-Modified-Since', 'com.zoho.crm.api.Record.GetRecordsHeader')
      def self.If_modified_since
        @@If_modified_since
      end
      @@X_external = Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.GetRecordsHeader')
      def self.X_external
        @@X_external
      end
    end

    class UpdateRecordsHeader
      @@X_external = Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.UpdateRecordsHeader')
      def self.X_external
        @@X_external
      end
    end

    class DeleteRecordsParam
      @@ids = Param.new('ids', 'com.zoho.crm.api.Record.DeleteRecordsParam')
      def self.ids
        @@ids
      end
      @@wf_trigger = Param.new('wf_trigger', 'com.zoho.crm.api.Record.DeleteRecordsParam')
      def self.wf_trigger
        @@wf_trigger
      end
    end

    class DeleteRecordsHeader
      @@X_external = Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.DeleteRecordsHeader')
      def self.X_external
        @@X_external
      end
    end

    class UpsertRecordsHeader
      @@X_external = Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.UpsertRecordsHeader')
      def self.X_external
        @@X_external
      end
    end

    class GetDeletedRecordsParam
      @@type = Param.new('type', 'com.zoho.crm.api.Record.GetDeletedRecordsParam')
      def self.type
        @@type
      end
      @@page = Param.new('page', 'com.zoho.crm.api.Record.GetDeletedRecordsParam')
      def self.page
        @@page
      end
      @@per_page = Param.new('per_page', 'com.zoho.crm.api.Record.GetDeletedRecordsParam')
      def self.per_page
        @@per_page
      end
    end

    class GetDeletedRecordsHeader
      @@If_modified_since = Header.new('If-Modified-Since', 'com.zoho.crm.api.Record.GetDeletedRecordsHeader')
      def self.If_modified_since
        @@If_modified_since
      end
    end

    class SearchRecordsParam
      @@criteria = Param.new('criteria', 'com.zoho.crm.api.Record.SearchRecordsParam')
      def self.criteria
        @@criteria
      end
      @@email = Param.new('email', 'com.zoho.crm.api.Record.SearchRecordsParam')
      def self.email
        @@email
      end
      @@phone = Param.new('phone', 'com.zoho.crm.api.Record.SearchRecordsParam')
      def self.phone
        @@phone
      end
      @@word = Param.new('word', 'com.zoho.crm.api.Record.SearchRecordsParam')
      def self.word
        @@word
      end
      @@converted = Param.new('converted', 'com.zoho.crm.api.Record.SearchRecordsParam')
      def self.converted
        @@converted
      end
      @@approved = Param.new('approved', 'com.zoho.crm.api.Record.SearchRecordsParam')
      def self.approved
        @@approved
      end
      @@page = Param.new('page', 'com.zoho.crm.api.Record.SearchRecordsParam')
      def self.page
        @@page
      end
      @@per_page = Param.new('per_page', 'com.zoho.crm.api.Record.SearchRecordsParam')
      def self.per_page
        @@per_page
      end
    end

    class SearchRecordsHeader
      @@X_external = Header.new('X-EXTERNAL', 'com.zoho.crm.api.Record.SearchRecordsHeader')
      def self.X_external
        @@X_external
      end
    end

    class GetMassUpdateStatusParam
      @@job_id = Param.new('job_id', 'com.zoho.crm.api.Record.GetMassUpdateStatusParam')
      def self.job_id
        @@job_id
      end
    end

  end
end
