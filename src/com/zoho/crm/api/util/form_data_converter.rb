require_relative 'converter'
require_relative 'stream_wrapper'
require_relative 'constants'
module Util
  # This class is to process the upload file and stream.
  class FormDataConverter < Converter
    attr_accessor :unique_hash

    def initialize(common_api_handler)
      @unique_hash = {}

      super(common_api_handler)
    end

    def append_to_request(request_base, request_object)
      request_base.set_form(set_file_fody(request_object), Constants::MULTIPART_FORM_DATA) if request_object.is_a?(Hash)
    end

    def set_file_fody(request_object)
      data = []
      request_object.each do |key, value|
        if value.is_a? Array
          value.each do |v|
            if v.is_a? StreamWrapper
              data.push([key, v.stream, { filename: v.name }])
            else
              data.push([key, v])
            end
          end
        elsif value.is_a? StreamWrapper
          data.push([key, value.stream, { filename: value.name }])
        else
          data.push([key, value])
        end
      end
      data
    end

    def form_request(request_instance, class_path, instance_no, member_json_details = nil)
      require_relative '../initializer'
      package_name = Utility.path_to_package(class_path)
      class_details = Initializer.json_details[package_name]
      request_hash = {}

      class_details.each_key do |member_name|
        member_details = class_details[member_name]
        if (member_details.key?(Constants::READ_ONLY) && member_details[Constants::READ_ONLY]) || (!member_details.key? Constants::NAME)
          next
        end

        begin
          modified = request_instance.public_send(Constants::IS_KEY_MODIFIED, member_name)
        rescue StandardError => e
          raise SDKException.new(nil, Constants::EXCEPTION_IS_KEY_MODIFIED, nil, e)
        end

        if (modified.nil? || modified.zero?) && member_details.key?(Constants::REQUIRED) && member_details[Constants::REQUIRED]
          raise SDKException.new(Constants::MANDATORY_KEY_ERROR, Constants::MANDATORY_VALUE_ERROR + member_name)
        end

        member_data = request_instance.instance_variable_get(Constants::AT + member_name)

        if !modified.nil? && (modified != 0) && value_checker(request_instance.class.name, member_name, member_details, member_data, @unique_hash, instance_no)
          key_name = member_details[Constants::NAME]
          type = member_details[Constants::TYPE]
          if type.downcase == Constants::LIST_NAMESPACE.downcase
            request_hash[key_name] = set_json_array(member_data, member_details)
          elsif (type.downcase == Constants::MAP_NAMESPACE.downcase) || (type.downcase == Constants::HASH_MAP_NAMESPACE.downcase)
            request_hash[key_name] = set_json_object(member_data, member_details)
          elsif member_details.key? Constants::STRUCTURE_NAME
            request_hash[key_name] = form_request(member_data, member_details[Constants::STRUCTURE_NAME], 1, member_details)
          else
            request_hash[key_name] = member_data
          end
        end
      end

      request_hash
    end

    def set_json_object(field_value, member_json_details)
      json_object = {}
      request_object = field_value

      if member_json_details.nil?
        request_object.each_pair do |key, value|
          json_object[key] = redirector_for_object_to_json(value)
        end
      else
        keys_detail = request_object[Constants::KEYS]

        keys_detail.each do |key_detail|
          key_name = key_detail[Constants::NAME]

          if json_object.key?(key_name) && !json_object[key_name].nil?

            key_value = if key_detail.key? Constants::STRUCTURE_NAME
                          form_request(request_object[key_name], key_detail[Constants::STRUCTURE_NAME], 1, member_json_details)
                        else
                          redirector_for_object_to_json(request_object[key_name])
                        end
            json_object[key_name] = key_value
          end
        end
      end

      json_object
    end

    def set_json_array(member_data, member_json_details)
      json_array = []

      if member_json_details.nil?

        member_data.each do |value|
          json_array.push(redirector_for_object_to_json(value))
        end
      elsif member_json_details.key? Constants::STRUCTURE_NAME

        instance_count = 0
        package = member_json_details[Constants::STRUCTURE_NAME]

        member_data.each do |data|
          instance_count += 1
          json_array.push(form_request(data, package, instance_count, member_json_details))
        end
      else

        member_data.each do |data|
          json_array.push(redirector_for_object_to_json(data))
        end

      end
      json_array
    end

    def redirector_for_object_to_json(request)
      if request.is_a?(Hash)
        set_json_object(request, nil)
      elsif request.is_a?(Array)
        set_json_array(request, nil)
      else
        request
      end
    end

    def get_wrapped_response(response, class_path)
      nil
    end

    def get_response(response_object, class_path)
      nil
    end
  end
end
