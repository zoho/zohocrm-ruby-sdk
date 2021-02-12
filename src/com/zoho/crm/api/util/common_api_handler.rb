require 'uri'

require_relative 'json_converter'
require_relative 'form_data_converter'
require_relative 'data_type_converter'
require_relative 'downloader'
require_relative 'api_response'
require_relative 'api_http_connector'
require_relative '../initializer'
require_relative '../header'
require_relative '../param'
require_relative '../header_map'
require_relative '../parameter_map'
require_relative 'constants'
require_relative '../exception/sdk_exception'
require_relative '../../../api/logger/sdk_logger'

module Handler
  # This class is to process the API request and its response.
  # Construct the objects that are to be sent as parameters or in the request body with the API.
  # The Request parameter, header and body objects are constructed here.
  # Process the response JSON and converts it to relevant objects in the library.
  class CommonAPIHandler
    attr_accessor :api_path, :header, :param, :category_method, :request, :http_method, :module_api_name, :content_type, :mandatory_checker

    def initialize
      @api_path = nil

      @header = HeaderMap.new

      @param = ParameterMap.new

      @mandatory_checker = false

      @request = nil

      @http_method = nil

      @category_method = nil

      @module_api_name = nil

      @content_type = nil
    end

    # This method is used in constructing API request and response details. To make the Zoho CRM API calls.
    # @param class_name [String] A Class containing the method return type.
    # @param encode_type [String] A String containing the expected API response content type.
    # @see Util::APIHTTPConnector
    # @return A APIResponse representing the Zoho CRM API response instance or nil.
    def api_call(class_name, encode_type)
      if Initializer.get_initializer.nil?
        raise SDKException.new(Constants::SDK_UNINITIALIZATION_ERROR, Constants::SDK_UNINITIALIZATION_MESSAGE, nil, nil)
      end

      connector = Util::APIHTTPConnector.new

      begin
        set_api_url(connector)
      rescue SDKException => e
        SDKLog::SDKLogger.severe(Constants::SET_API_URL_EXCEPTION, e)
        raise e
      rescue StandardError => e
        ex = SDKException.new(nil, nil, nil, e)
        SDKLog::SDKLogger.severe(Constants::SET_API_URL_EXCEPTION, ex)
        raise ex
      end

      connector.request_method = @http_method

      connector.content_type = @content_type

      connector.headers = @header.header_hash if !@header.nil? && !@header.header_hash.empty?

      connector.parameters = @param.param_hash if !@param.nil? && !@param.param_hash.empty?

      begin
        Initializer.get_initializer.token.authenticate(connector)
      rescue SDKException => e
        SDKLog::SDKLogger.severe(Constants::AUTHENTICATION_EXCEPTION, e)
        raise e
      rescue StandardError => e
        ex = SDKException.new(nil, nil, nil, e)
        SDKLog::SDKLogger.severe(Constants::AUTHENTICATION_EXCEPTION, ex)
        raise ex
      end

      converter_instance = nil

      if !@content_type.nil? && ((@http_method == Constants::REQUEST_METHOD_POST) || (@http_method == Constants::REQUEST_METHOD_PUT) || (@http_method == Constants::REQUEST_METHOD_PATCH))
        request = nil

        begin
          converter_instance = get_converter_class_instance(@content_type.to_s.downcase)
          request = converter_instance.form_request(@request, @request.class.name, nil, nil)
        rescue SDKException => e
          SDKLog::SDKLogger.severe(Constants::FORM_REQUEST_EXCEPTION, e)
          raise e
        rescue StandardError => e
          ex = SDKException.new(nil, nil, nil, e)
          SDKLog::SDKLogger.severe(Constants::FORM_REQUEST_EXCEPTION, ex)
          raise ex
        end

        connector.request_body = request
      end

      begin
        connector.headers[Constants::ZOHO_SDK] = RUBY_PLATFORM + ' Ruby/' + RUBY_VERSION + ':' + Constants::SDK_VERSION

        response = connector.fire_request(converter_instance)

        status_code = response.code.to_i

        headers = response.each_header.to_h

        is_model = false

        return_object = nil

        unless response.body.nil?
          mime_type = headers[Constants::CONTENT_TYPE]

          mime_type = mime_type.split(';')[0] if mime_type.include? ';'
          converter_instance = get_converter_class_instance(mime_type.to_s.downcase)

          return_object = converter_instance.get_wrapped_response(response, class_name)
        end

        unless return_object.nil?

          is_model = true if (class_name == return_object.class.name) || is_expected_type(return_object, class_name)
        end
        Response::APIResponse.new(headers, status_code, return_object, is_model)
      rescue SDKException => e
        SDKLog::SDKLogger.severe(Constants::API_CALL_EXCEPTION, e)
        raise e
      rescue StandardError => e
        ex = SDKException.new(nil, nil, nil, e)
        SDKLog::SDKLogger.severe(Constants::API_CALL_EXCEPTION, ex)
        raise ex
      end
    end

    def is_expected_type(model, class_name)
      ancestors = model.class.ancestors
      ancestors.each do |ancestor|
        return true if ancestor.name == class_name
      end
      false
    end

    # This method is to add an API request parameter.
    # @param param [Param] A Param class instance.
    # @param param_value [Object] An object containing the API request parameter value.
    def add_param(param, param_value)
      if param.is_a? Param
        unless param_value.nil?
          @param = ParameterMap.new if @param.nil?

          @param.add(param, param_value)
        end
      end
    end

    def param=(param_instance)
      return if (param_instance==nil)
      @param = ParameterMap.new if @param.nil?
      @param.param_hash = @param.param_hash.merge(param_instance.param_hash)
    end

    def header=(header_instance)
      return if (header_instance==nil)
      @header = HeaderMap.new if @header.nil?
      @header.header_hash = @header.header_hash.merge(header_instance.header_hash)
    end

    # This method is to add an API request header.
    # @param header [Header] A Header class instance.
    # @param param_value [Object] An object containing the API request parameter value.
    def add_header(header, header_value)
      if header.is_a? Header
        unless header_value.nil?

          @header = HeaderMap.new if @header.nil?

          @header.add(header, header_value)
        end
      end
    end

    def set_api_url(connector)
      api_path = ''
      initializer = Initializer.get_initializer
      if @api_path.to_s.include? Constants::HTTP
        if @api_path.to_s.include? Constants::CONTENT_API_URL
          api_path = initializer.environment.file_upload_url
          begin
            uri = URI.parse(@api_path)

            api_path += uri.path
          rescue URI::InvalidURIError => e
            ex = SDKException.new(nil, nil, nil, e)
            SDKLog::SDKLogger.severe(Constants::INVALID_URL_ERROR, ex)

            raise ex
          end
        else
          @api_path = @api_path.to_s.slice(1..@api_path.to_s.length) if @api_path.to_s.slice(0..0) == '/'
          api_path += @api_path
        end
      else
        api_path += initializer.environment.url

        api_path += @api_path
      end
      connector.url = api_path
    end

    # This method is used to get a Converter class instance.
    # @param encode_type [String] A String containing the expected API response content type.
    def get_converter_class_instance(encode_type)
      case encode_type
      when 'application/json', 'text/plain' , 'application/ld+json'
        Util::JSONConverter.new(self)
      when 'application/xml', 'text/xml'
        Util::XMLConverter.new(self)
      when 'multipart/form-data'
        Util::FormDataConverter.new(self)
      when 'image/png','image/jpeg','image/gif','image/tiff','image/svg+xml','image/bmp','image/webp','text/csv','text/html','text/css','text/javascript','text/calendar','application/x-download','application/zip','application/pdf','application/java-archive','application/javascript','application/octet-stream','application/xhtml+xml','application/x-bzip','application/msword','application/vnd.openxmlformats-officedocument.wordprocessingml.document','application/gzip','application/x-httpd-php','application/vnd.ms-powerpoint','application/vnd.rar','application/x-sh','application/x-tar','application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','application/x-7z-compressed','audio/mpeg','audio/x-ms-wma','audio/vnd.rn-realaudio','audio/x-wav','audio/3gpp','audio/3gpp2','video/mpeg','video/mp4','video/webm','video/3gpp','video/3gpp2','font/ttf'
        Util::Downloader.new(self)
      end
    end
  end
end
