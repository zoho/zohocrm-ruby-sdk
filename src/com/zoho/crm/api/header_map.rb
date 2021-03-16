# This class represents the HTTP header name and value.
require_relative 'util/data_type_converter'
require_relative 'exception/sdk_exception'
require_relative 'util/header_param_validator'

class HeaderMap
  attr_accessor :header_hash

  def initialize
    @header_hash = {}
  end

  # This method is to add header name and value.
  # @param header [Header] A Header class instance.
  # @param value [Object] An object containing the header value.
  def add(header, value)
    unless header.is_a? Header
      raise SDKException.new(Constants::HEADER_NULL_ERROR, Constants::HEADER_INSTANCE_NULL_ERROR)
    end

    header_name = header.name

    if header_name.nil?
      raise SDKException.new(Constants::HEADER_NAME_NULL_ERROR, Constants::HEADER_NAME_NULL_ERROR_MESSAGE)
    end

    if value.nil?
      raise SDKException.new(Constants::HEADER_NULL_ERROR, header_name + Constants::NULL_VALUE_ERROR_MESSAGE)
    end

    header_value = nil

    if header.class_name.nil?
      begin
        header_value = value.to_s
      rescue StandardError
        header_value = value
      end
    else
      header_param_validator = Util::HeaderParamValidator.new
      header_value = header_param_validator.validate(header, value)
    end

    header_value = header_value.to_s
    if (@header_hash.key? header_name) && !@header_hash[header_name].nil?
      existing_header_value = @header_hash[header_name]

      existing_header_value = existing_header_value + ',' + header_value

      @header_hash[header_name] = existing_header_value
    else
      @header_hash[header_name] = header_value
    end
  end
end
