require_relative '../header'
require_relative '../exception/sdk_exception'
require_relative '../util/api_response'
require_relative '../util/common_api_handler'
require_relative '../util/constants'

module Profiles
  class ProfilesOperations

      # Creates an instance of ProfilesOperations with the given parameters
      # @param if_modified_since [DateTime] An instance of DateTime
    def initialize(if_modified_since=nil)
      if if_modified_since!=nil and !if_modified_since.is_a? DateTime
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: if_modified_since EXPECTED TYPE: DateTime', nil, nil)
      end
      @if_modified_since = if_modified_since
    end

      # The method to get profiles
      # @return An instance of APIResponse
    # @raise SDKException
    def get_profiles
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/settings/profiles'
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.add_header(Header.new('If-Modified-Since', 'com.zoho.crm.api.Profiles.GetProfilesHeader'), @if_modified_since)
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

      # The method to get profile
      # @param id [Integer] A Integer
      # @return An instance of APIResponse
    # @raise SDKException
    def get_profile(id)
      if !id.is_a? Integer
        raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
      end
      handler_instance = Handler::CommonAPIHandler.new
      api_path = ''
      api_path = api_path + '/crm/v2/settings/profiles/'
      api_path = api_path + id.to_s
      handler_instance.api_path = api_path
      handler_instance.http_method = Constants::REQUEST_METHOD_GET
      handler_instance.category_method = 'READ'
      handler_instance.add_header(Header.new('If-Modified-Since', 'com.zoho.crm.api.Profiles.GetProfileHeader'), @if_modified_since)
      require_relative 'response_handler'
      handler_instance.api_call(ResponseHandler.name, 'application/json')
    end

    class GetProfilesHeader
    end

    class GetProfileHeader
    end

  end
end
