require 'net/http'

require_relative '../initializer'
require_relative '../../../api/logger/sdk_logger'
require_relative 'constants'

module Util
  # This class is to make HTTP connections, trigger the requests and receive the response
  class APIHTTPConnector
    attr_accessor :url, :headers, :request_method, :parameters, :request_body, :content_type

    def initialize
      @url = nil

      @headers = {}

      @request_method = nil

      @parameters = {}

      @request_body = nil

      @content_type = nil
    end

    def set_content_type_header
      Constants::SET_TO_CONTENT_TYPE.each do |content_type|
        if @url.include? content_type
          @headers[Constants::CONTENT_TYPE] = @content_type
          break
        end
      end
    end

    # This method makes a Zoho CRM Rest API request
    # @param converterInstance A Converter class instance to call appendToRequest method.
    # @return HttpResponse class instance or nil
    # @raise Exception
    def fire_request(converter_instance)
      @parameters&.each do |param_key, value|
        @parameters[param_key] = CGI.escape(value) if value.is_a? String
      end

      query_string = @parameters.to_a.map { |x| "#{x[0]}=#{x[1]}" }.join('&')

      @url += '?' + query_string if !query_string.nil? && (query_string.strip != '')

      url = URI(@url)
      http = nil
      initializer = Initializer.get_initializer
      request_proxy = initializer.request_proxy
      if request_proxy.nil?
        http = Net::HTTP.new(url.host, url.port)
      else
        proxy_host = request_proxy.host
        proxy_port = request_proxy.port
        proxy_user = nil
        proxy_password = nil
        unless proxy_user.nil?
          proxy_user = request_proxy.user_name
          proxy_password = request_proxy.password
        end
        http = Net::HTTP.new(url.host, url.port, proxy_host, proxy_port, proxy_user, proxy_password)
        SDKLog::SDKLogger.info(proxy_log(request_proxy))
      end

      http.use_ssl = true
      http.open_timeout = initializer.sdk_config.open_timeout
      http.read_timeout = initializer.sdk_config.read_timeout
      http.write_timeout = initializer.sdk_config.write_timeout
      http.keep_alive_timeout = initializer.sdk_config.keep_alive_timeout

      if @request_method == Constants::REQUEST_METHOD_GET
        req = Net::HTTP::Get.new(url.request_uri)
      elsif @request_method == Constants::REQUEST_METHOD_POST
        req = Net::HTTP::Post.new(url.request_uri)
      elsif @request_method == Constants::REQUEST_METHOD_PUT
        req = Net::HTTP::Put.new(url.request_uri)
      elsif @request_method == Constants::REQUEST_METHOD_PATCH
        req = Net::HTTP::Patch.new(url.request_uri)
      elsif @request_method == Constants::REQUEST_METHOD_DELETE
        req = Net::HTTP::Delete.new(url.request_uri)
      end

      set_content_type_header unless @content_type.nil?

      @headers&.each { |key, value| req.add_field(key, value) }

      converter_instance.append_to_request(req, @request_body) unless @request_body.nil?

      SDKLog::SDKLogger.info(to_s)

      response = http.request(req)
      response
    end

    def to_s
      req_headers = @headers.clone
      req_headers [Constants::AUTHORIZATION] = Constants::CANT_DISCLOSE
      @request_method + ' - ' + Constants::URL + ' = ' + @url + ', ' + Constants::HEADERS + ' = ' + req_headers.to_s + ', ' + Constants::PARAMS + ' = ' + @parameters.to_s
    end

    def proxy_log(request_proxy)
      if request_proxy.user_name.nil?
        'Proxy settings - Host : ' + request_proxy.host + ' , Port : ' + request_proxy.port.to_s
      else
        'Proxy settings - Host : ' + request_proxy.host + ' , Port : ' + request_proxy.port.to_s + ' , Proxy User : ' + request_proxy.user_name
      end
    end
  end
end
