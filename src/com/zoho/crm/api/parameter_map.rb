require_relative 'util/data_type_converter'
require_relative 'exception/sdk_exception'
require_relative 'util/header_param_validator'

class ParameterMap
  attr_accessor :param_hash

  def initialize
    @param_hash = {}
  end

  # This method is to add parameter name and value.
  # @param param [Param] A Param class instance.
  # @param value [Object] An object containing the parameter value.
  def add(param, value)
    unless param.is_a? Param
      raise SDKException.new(Constants::PARAMETER_NULL_ERROR, Constants::PARAM_INSTANCE_NULL_ERROR)
    end

    param_name = param.name

    if param_name.nil?
      raise SDKException.new(Constants::PARAM_NAME_NULL_ERROR, Constants::PARAM_NAME_NULL_ERROR_MESSAGE)
    end

    if value.nil?
      raise SDKException.new(Constants::PARAMETER_NULL_ERROR, header_name + Constants::NULL_VALUE_ERROR_MESSAGE)
    end

    param_value = nil

    if param.class_name.nil?
      begin
        param_value = value.to_s
      rescue StandardError
        param_value = value
      end
    else
      header_param_validator = Util::HeaderParamValidator.new
      param_value = header_param_validator.validate(param, value)
    end

    param_value = param_value.to_s
    if (@param_hash.key? param_name) && !@param_hash[param_name].nil?
      existing_param_value = @param_hash[param_name]

      existing_param_value = existing_param_value + ',' + param_value

      @param_hash[param_name] = existing_param_value
    else
      @param_hash[param_name] = param_value
    end
  end
end
