require 'base64'
require_relative 'constants'
require_relative 'utility'

module Util
  class Converter
    attr_accessor :common_api_handler
    # This method is to process the API response.
    # @param response [Object] A Object containing the API response contents or response.
    # @param class_path [String] A String containing the expected method return type.
    def get_response(response_json, class_path); end

    # This abstract method is to construct the API request.
    # @param request_instance [Object] An Object containing the class instance.
    # @param class_path [String] A String containing the expected method return type.
    # @param instanceNumber [Integer] An Integer containing the class instance list number.
    # @return An Object representing the API request body object.
    # @raise Exception
    def form_request(request_instance, class_path, instance_no, member_details = nil); end

    # This abstract method is to process the API response.
    # @param response [Object] A Object containing the HttpResponse class instance.
    # @param pack [String] A String containing the expected method return type.
    # @return An Object representing the POJO class instance.
    # @raise Exception
    def get_wrapper_response(response, pack); end

    # This abstract method is to construct the API request body.
    # @param request [Object] A HttpEntityEnclosingRequestBase class instance.
    # @param request_object A Object containing the API request body object.
    # @raise Exception
    def append_to_request(request, request_object); end

    # Creates a Converter class instance with the CommonAPIHandler class instance.
    # @param common_api_handler A CommonAPIHandler class instance.
    def initialize(common_api_handler)
      @common_api_handler = common_api_handler
    end

    # This method is to validate if the input values satisfy the constraints for the respective fields.
    # @param class_name [String] A String containing the class name.
    # @param member_name [String] A String containing the member name.
    # @param key_details A Hash containing the key JSON details.
    # @param value [Object[ An Object containing the key value.
    # @param unique_values_map A Hash containing the construct objects.
    # @param instance_number [Integer] An Integer containing the POJO class instance list number.
    # @return A Boolean representing the key value is expected pattern, unique, length, and values.
    # @raise SDKException
    def value_checker(class_name, member_name, key_details, value, unique_values_map, instance_number)
      error = {}

      name = key_details[Constants::NAME]
      type = key_details[Constants::TYPE]

      var_type = nil
      check = true

      unless value.nil? 
        var_type = value.class.name
      end
  
      if Constants::DATA_TYPE.key? type 
        if value.is_a? Array
          if key_details.key? Constants::STRUCTURE_NAME
            structure_name = key_details[Constants::STRUCTURE_NAME]
            index = 0
            value.each do |data|
              class_name = data.class.name
              unless structure_name.downcase == Util::Utility.path_to_package(class_name).downcase
                instance_number = index
                type = Constants::LIST_NAMESPACE + '(' + structure_name + ')'
                var_type = Constants::LIST_NAMESPACE + '(' + class_name + ')'
                expected_list_type = false
                check = false
               
                break
              end
              index += 1
            end
          end
        elsif !value.nil? 
          check = Util::Utility.check_data_type(value,type)
        end
      elsif (type.downcase != Constants::OBJECT.downcase)
        if type.downcase != Util::Utility.path_to_package(var_type).downcase 
          check = false
        end
      end
      if !check 
        error[Constants::ERROR_HASH_CLASS] = class_name

        error[Constants::ERROR_HASH_FIELD] = member_name

        error[Constants::INDEX] = instance_number

        error[Constants::ERROR_HASH_EXPECTED_TYPE] = type

        error[Constants::GIVEN_TYPE] = var_type

        raise SDKException.new(Constants::TYPE_ERROR, nil, error, nil)
      end

      class_name = if class_name.include? Constants::DOUBLE_COLON
                     class_name.split(Constants::DOUBLE_COLON)[1]
                   else
                     class_name.split(Constants::DOT)[5]
                   end

      if key_details.key?(Constants::VALUES) && (!key_details.key?(Constants::PICKLIST) || (key_details[Constants::PICKLIST] && Initializer.get_initializer.sdk_config.pick_list_validation))
        value = value.value if value.is_a? Util::Choice
        unless key_details[Constants::VALUES].include? value

          unless instance_number.nil?
            error[Constants::INDEX] = instance_number 
          end

          error[Constants::ERROR_HASH_CLASS] = class_name

          error[Constants::ERROR_HASH_FIELD] = member_name

          error[Constants::ACCEPTED_VALUES] = key_details[Constants::VALUES]

          raise SDKException.new(Constants::UNACCEPTED_VALUES_ERROR, nil, error, nil)
        end
      end

      if key_details.key?(Constants::MIN_LENGTH) || key_details.key?(Constants::MAX_LENGTH)
        count = value.length
        if count < key_details[Constants::MIN_LENGTH]
          error[Constants::ERROR_HASH_CLASS] = class_name

          error[Constants::GIVEN_LENGTH] = count

          error[Constants::ERROR_HASH_FIELD] = member_name

          error[Constants::ERROR_HASH_MINIMUM_LENGTH] = key_details[Constants::MIN_LENGTH]

          raise SDKException.new(Constants::MINIMUM_LENGTH_ERROR, nil, error, nil)

        end

        if count > key_details[Constants::MAX_LENGTH]
          error[Constants::ERROR_HASH_CLASS] = class_name

          error[Constants::ERROR_HASH_FIELD] = member_name

          error[Constants::GIVEN_LENGTH] = count

          error[Constants::ERROR_HASH_MAXIMUM_LENGTH] = key_details[Constants::MAX_LENGTH]

          raise SDKException.new(Constants::MAXIMUM_LENGTH_ERROR, nil, error, nil)

        end
      end

      if key_details.key? Constants::REGEX
        if value.match(key_details[Constants::REGEX]).nil?
          error[Constants::INSTANCE_NUMBER] = instance_number

          error[Constants::ERROR_HASH_CLASS] = class_name

          error[Constants::ERROR_HASH_FIELD] = member_name

          raise SDKException.new(Constants::REGEX_MISMATCH_ERROR, nil, error, nil)

        end

      end

      if key_details.key? Constants::UNIQUE

        unique_values_map[name] = [] unless unique_values_map.key? name

        if unique_values_map[name].include? value
          error[Constants::FIRST_INDEX] = unique_values_map[name].find_index(value) + 1

          error[Constants::NEXT_INDEX] = instance_number

          error[Constants::ERROR_HASH_CLASS] = class_name

          error[Constants::ERROR_HASH_FIELD] = member_name

          raise SDKException.new(Constants::UNIQUE_KEY_ERROR, nil, error, nil)

        else
          unique_values_map[name].push(value)
        end
      end

      true
    end

    # This method to get the module field JSON details file path.
    # @return A String representing the module field JSON details file path.
    def get_record_json_file_path
      initializer = Initializer.get_initializer

      file_name = initializer.user.email

      file_name = file_name[0..file_name.index(Constants::AT) - 1] + initializer.environment.url

      bytes = file_name.force_encoding('utf-8').bytes

      str = Base64.encode64(bytes.pack('"C*"'))

      str = str.chomp

      File.join(initializer.resources_path + '/' + Constants::RESOURCES + '/' + str + '.json')
    end
  end
end
