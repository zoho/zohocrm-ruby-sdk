require 'json'
require_relative 'converter'
require_relative 'constants'
module Util
  class JSONConverter < Converter
    attr_accessor :unique_hash

    def initialize(common_api_handler)
      @unique_hash = {}
      super(common_api_handler)
    end

    def append_to_request(request_base, request_object)
      request_object = request_object.to_json
      request_base.body = request_object.to_s
    end

    def form_request(request_instance, pack, instance_number, member_json_details = nil)
      require_relative '../initializer'

      package_name = Utility.path_to_package(pack)
      class_detail = Initializer.json_details[package_name]

      if class_detail.key?(Constants::INTERFACE) && !class_detail[Constants::INTERFACE].nil?
        request_object_class_name = request_instance.class.name
        request_object_class_name = Utility.path_to_package(request_object_class_name)
        classes = class_detail[Constants::CLASSES]

        classes.each do |class_name|
          class_name_lower = class_name.to_s.downcase
          request_class_path_lower = request_object_class_name.downcase

          if class_name_lower.downcase == request_class_path_lower.downcase
            class_detail = Initializer.json_details[class_name.to_s]
            break
          end
        end
      end

      require_relative '../record/record'

      if request_instance.is_a? Record::Record
        module_api_name = @common_api_handler.module_api_name
        return_json = is_record_request(request_instance, class_detail, instance_number, member_json_details)
        @common_api_handler.module_api_name = module_api_name
        return_json
      else
        is_not_record_request(request_instance, class_detail, instance_number, member_json_details)
      end
    end

    def is_not_record_request(request_instance, class_detail, instance_number, class_member_details = nil)
      lookup = false
      skip_mandatory = false
      class_member_name = nil
      unless class_member_details.nil?
        lookup = (class_member_details.key? Constants::LOOKUP) ? class_member_details[Constants::LOOKUP] : false
        skip_mandatory = (class_member_details.key? Constants::SKIP_MANDATORY) ? class_member_details[Constants::SKIP_MANDATORY] : false
        class_member_name = build_name(class_member_details[Constants::NAME])
      end

      request_json = {}
      required_keys = {}
      primary_keys = {}
      required_in_update_keys = {}

      class_detail.each_key do |member_name|
        member_detail = class_detail[member_name]

        if (member_detail.key?(Constants::READ_ONLY) && member_detail[Constants::READ_ONLY]) || (!member_detail.key? Constants::NAME)
          next
        end

        key_name = member_detail[Constants::NAME]
        begin
          modified = request_instance.public_send(Constants::IS_KEY_MODIFIED, key_name)
        rescue StandardError => e
          raise SDKException.new(nil, Constants::EXCEPTION_IS_KEY_MODIFIED, nil, e)
        end
        
        if member_detail.key?(Constants::REQUIRED) && member_detail[Constants::REQUIRED]
          required_keys[key_name]=1 
        end

        if member_detail.key?(Constants::REQUIRED_IN_UPDATE) && member_detail[Constants::REQUIRED_IN_UPDATE]
          required_in_update_keys[key_name]=1 
        end

        if member_detail.key?(Constants::PRIMARY) && member_detail[Constants::PRIMARY] && (!member_detail.key?(Constants::REQUIRED_IN_UPDATE) || member_detail[Constants::REQUIRED])
          primary_keys[key_name]=1 
        end

        if !modified.nil? && (modified != 0)
          field_value = request_instance.instance_variable_get(Constants::AT + member_name)

          if value_checker(request_instance.class.name, member_name, member_detail, field_value, @unique_hash, instance_number) == true
            require_relative '../record/file_details'

            unless field_value.nil?
              required_keys.delete(key_name)

              primary_keys.delete(key_name)

              required_in_update_keys.delete(key_name)
            end

            if request_instance.is_a? Record::FileDetails
              lower_case_key_name = key_name.downcase
              
              
              request_json[lower_case_key_name] = if field_value.nil?
                                                    nil
                                                  else
                                                    field_value
                                                  end
            else
              request_json[key_name] = set_data(member_detail, field_value)
            end
          end
        end
      end

      if skip_mandatory || check_exception(class_member_name, request_instance, instance_number, lookup, required_keys, primary_keys, required_in_update_keys)
        request_json
      end
    end

    def is_record_request(record_instance, class_detail, instance_number, class_member_details = nil)
      lookup = false
      skip_mandatory = false
      class_member_name = nil
      unless class_member_details.nil?
        lookup = (class_member_details.key? Constants::LOOKUP) ? class_member_details[Constants::LOOKUP] : false
        skip_mandatory = (class_member_details.key? Constants::SKIP_MANDATORY) ? class_member_details[Constants::SKIP_MANDATORY] : false
        class_member_name = (class_member_details.key? Constants::NAME) ? class_member_details[Constants::NAME] : nil
      end
      request_json = {}
      module_detail = {}
      module_api_name = @common_api_handler.module_api_name

      if module_api_name.nil?
        module_detail = class_detail
        class_detail = Initializer.json_details[Constants::RECORD_NAMESPACE]
      else

        @common_api_handler.module_api_name = nil
        full_detail = Utility.search_json_details(module_api_name)

        module_detail = if full_detail.nil?
                          get_module_detail_from_user_spec_json(module_api_name)
                        else
                          full_detail[Constants::MODULEDETAILS]
                        end
      end

      if record_instance.class.superclass == 'Record'
      end

      key_values = record_instance.instance_variable_get(Constants::AT + Constants::KEY_VALUES)
      key_modified = record_instance.instance_variable_get(Constants::AT + Constants::KEY_MODIFIED)

      required_keys = {}
      primary_keys = {}
      unless skip_mandatory
        module_detail.each_key do |key_name|
          key_detail = module_detail[key_name]
          name = key_detail[Constants::NAME]
          if key_detail.key?(Constants::REQUIRED) && key_detail[Constants::REQUIRED]
            required_keys[name]=1
          end
          if key_detail.key?(Constants::PRIMARY) && key_detail[Constants::PRIMARY]
            primary_keys[name]=1
          end
        end
        class_detail.each_key do |key_name|
          key_detail = class_detail[key_name]
          name = key_detail[Constants::NAME]
          if key_detail.key?(Constants::REQUIRED) && key_detail[Constants::REQUIRED]
            required_keys[name]=1
          end
          if key_detail.key?(Constants::PRIMARY) && key_detail[Constants::PRIMARY]
            primary_keys[name]=1
          end
        end
      end

      key_modified.each_key do |key_name|
        next if key_modified[key_name] != 1

        key_detail = {}
        key_value = key_values[key_name]
        json_value = nil
        member_name = build_name(key_name)

        if !module_detail.empty? && (module_detail.key?(member_name) || module_detail.key?(key_name))

          key_detail = if module_detail.key? key_name
                         module_detail[key_name]
                       else
                         module_detail[member_name]
                       end

        elsif class_detail.key? member_name
          key_detail = class_detail[member_name]
        end

        unless key_value.nil?
          required_keys.delete(key_name)
          primary_keys.delete(key_name)
        end

        if !key_detail.empty?
          if (key_detail.key?(Constants::READ_ONLY) && key_detail[Constants::READ_ONLY]) || !(key_detail.key? Constants::NAME)
            next
          end

          if value_checker(record_instance.class.name, member_name, key_detail, key_value, @unique_hash, instance_number) == true

            json_value = set_data(key_detail, key_value)
          end
        else
          json_value = redirector_for_object_to_json(key_value)
        end

        request_json[key_name] = json_value
      end
      if skip_mandatory || check_exception(class_member_name, record_instance, instance_number, lookup, required_keys, primary_keys, [])
        request_json
      end
    end

    def check_exception(class_member_name, request_instance, instance_number, lookup, required_keys, primary_keys, required_in_update_keys = [])
      if required_in_update_keys.size.positive? && (@common_api_handler.category_method.downcase == Constants::REQUEST_CATEGORY_UPDATE.downcase)
        error = {}
        error[Constants::ERROR_HASH_FIELD] = class_member_name
        error[Constants::TYPE] = request_instance.class.name
        error[Constants::KEYS] = required_in_update_keys.keys
        error[Constants::INSTANCE_NUMBER] = instance_number
        raise SDKException.new(Constants::MANDATORY_VALUE_ERROR, Constants::MANDATORY_KEY_ERROR, error, nil)
      end

      if !@common_api_handler.mandatory_checker.nil? && @common_api_handler.mandatory_checker

        if @common_api_handler.category_method.downcase == Constants::REQUEST_CATEGORY_CREATE.downcase

          if lookup
            unless primary_keys.empty?
              error = {}
              error[Constants::ERROR_HASH_FIELD] = class_member_name
              error[Constants::TYPE] = request_instance.class.name
              error[Constants::KEYS] = primary_keys.keys
              error[Constants::INSTANCE_NUMBER] = instance_number
              raise SDKException.new(Constants::MANDATORY_VALUE_ERROR, Constants::PRIMARY_KEY_ERROR, error, nil)
            end
          elsif !required_keys.empty?
            error = {}
            error[Constants::ERROR_HASH_FIELD] = class_member_name
            error[Constants::TYPE] = request_instance.class.name
            error[Constants::KEYS] = required_keys.keys
            error[Constants::INSTANCE_NUMBER] = instance_number
            raise SDKException.new(Constants::MANDATORY_VALUE_ERROR, Constants::MANDATORY_KEY_ERROR, error, nil)
          end

        elsif @common_api_handler.category_method.downcase == Constants::REQUEST_CATEGORY_UPDATE.downcase && !primary_keys.empty?

          error = {}
          error[Constants::ERROR_HASH_FIELD] = class_member_name
          error[Constants::TYPE] = request_instance.class.name
          error[Constants::KEYS] = primary_keys.keys
          error[Constants::INSTANCE_NUMBER] = instance_number
          raise SDKException.new(Constants::MANDATORY_VALUE_ERROR, Constants::PRIMARY_KEY_ERROR, error, nil)
        end

      elsif lookup && (@common_api_handler.category_method.downcase == Constants::REQUEST_CATEGORY_UPDATE.downcase) && !primary_keys.empty?
        error = {}
        error[Constants::ERROR_HASH_FIELD] = class_member_name
        error[Constants::TYPE] = request_instance.class.name
        error[Constants::KEYS] = primary_keys.keys
        error[Constants::INSTANCE_NUMBER] = instance_number
        raise SDKException.new(Constants::MANDATORY_VALUE_ERROR, Constants::PRIMARY_KEY_ERROR, error, nil)
      end
      true
    end

    def set_data(member_detail, field_value)
      unless field_value.nil?
        type = member_detail[Constants::TYPE]

        if type.downcase == Constants::LIST_NAMESPACE.downcase
          return set_json_array(field_value, member_detail)
        elsif type.downcase == Constants::MAP_NAMESPACE.downcase
          return set_json_object(field_value, member_detail)
        elsif (type == Constants::CHOICE_NAMESPACE) || (member_detail.key?(Constants::STRUCTURE_NAME) && (member_detail[Constants::STRUCTURE_NAME] == Constants::CHOICE_NAMESPACE))
          return field_value.value
        elsif member_detail.key?(Constants::STRUCTURE_NAME) && member_detail.key?(Constants::MODULE)
          return is_record_request(field_value, get_module_detail_from_user_spec_json(member_detail[Constants::MODULE]), nil, member_detail)
        elsif member_detail.key? Constants::STRUCTURE_NAME
          return form_request(field_value, member_detail[Constants::STRUCTURE_NAME], nil, member_detail)
        else
          return DataTypeConverter.post_convert(field_value, type)
        end
      end

      nil
    end

    def set_json_object(field_value, member_detail)
      json_object = {}
      request_object = field_value

      unless request_object.empty?

        if member_detail.nil? || (!member_detail.nil? && !member_detail.key?(Constants::KEYS))

          request_object.each_pair do |key, value|
            json_object[key] = redirector_for_object_to_json(value)
          end
        elsif member_detail.key? Constants::KEYS

          keys_detail = member_detail[Constants::KEYS]

          keys_detail.each do |key_detail|
            key_value = nil
            key_name = key_detail[Constants::NAME]

            if request_object.key?(key_name) && !request_object[key_name].nil?
              key_value = set_data(key_detail, key_value)
              json_object[key_name] = key_value
            end
          end

        end
      end

      json_object
    end

    def set_json_array(field_value, member_detail)
      json_array = []
      request_objects = field_value

      unless request_objects.empty?

        if member_detail.nil? || (!member_detail.nil? && !member_detail.key?(Constants::STRUCTURE_NAME))

          request_objects.each do |request|
            json_array.push(redirector_for_object_to_json(request))
          end
        else
          pack = member_detail[Constants::STRUCTURE_NAME]

          if pack.downcase == Constants::CHOICE_NAMESPACE.downcase

            request_objects.each do |request|
              json_array.push(request.value)
            end
          elsif member_detail.key?(Constants::MODULE) && !member_detail[Constants::MODULE].nil?
            instance_count = 0
            request_objects.each do |request|
              json_array.push(is_record_request(request, get_module_detail_from_user_spec_json(member_detail[Constants::MODULE]), instance_count, member_detail))
              instance_count += 1
            end
          else
            instance_count = 0

            request_objects.each do |request|
              json_array.push(form_request(request, pack, instance_count, member_detail))
              instance_count += 1
            end
          end
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

    def get_wrapped_response(response, pack)
      response_json = JSON.parse(response.body)
      get_response(response_json, pack)
    rescue StandardError => e
      raise e
    end

    def get_response(response_json, pack)
      require_relative '../initializer'
      response_string = response_json.to_s

      return nil if response_string.nil? || response_string.length.zero? || (response_string == 'null')

      unless pack.nil?

        if pack.to_s.include? Constants::DOUBLE_COLON
          class_path_split = pack.to_s.split(Constants::DOUBLE_COLON)
          module_name = Utility.classname_to_filename(class_path_split[0])
          file_name = Utility.classname_to_filename(class_path_split[1])
        else
          class_path_split = pack.to_s.split(Constants::DOT)
          module_name = class_path_split[-2]
          file_name = Utility.classname_to_filename(class_path_split[-1])
        end
      end

      require_relative '../' + module_name + '/' + file_name
      pack = Utility.path_to_package(pack)
      class_detail = Initializer.json_details[pack.to_s]

      if class_detail.key?(Constants::INTERFACE) && !class_detail[Constants::INTERFACE].nil?
        classes = class_detail[Constants::CLASSES]
        instance = find_match(classes, response_json)
      else

        instance = if pack.is_a? String

                     if pack.include? Constants::DOUBLE_COLON
                       Object.const_get(pack).new
                     else
                       Object.const_get(Utility.class_to_load(pack)).new
                     end
                   else
                     Object.const_get(Utility.class_to_load(pack.to_s)).new
                   end

        require_relative '../record/record'

        if instance.is_a? Record::Record
          module_api_name = @common_api_handler.module_api_name
          instance = is_record_response(response_json, class_detail, pack)
          @common_api_handler.module_api_name = module_api_name
        else
          instance = not_record_response(instance, response_json, class_detail)
        end
      end

      instance
    end

    def not_record_response(instance, response_json, class_detail)
      class_detail.each_key do |member_name|
        key_detail = class_detail[member_name]
        key_name = (key_detail[Constants::NAME] if key_detail.key? Constants::NAME)

        if !key_name.nil? && response_json.key?(key_name) && !response_json[key_name].nil?
          key_data = response_json[key_name]
          member_value = get_data(key_data, key_detail)
          instance.instance_variable_set(Constants::AT + member_name, member_value)
        end
      end

      instance
    end

    def is_record_response(response_json, class_detail, package_name)
      record_instance = Object.const_get(Utility.class_to_load(package_name)).new
      module_api_name = @common_api_handler.module_api_name
      module_detail = {}

      unless module_api_name.nil?
        @common_api_handler.module_api_name = nil
        full_detail = Utility.search_json_details(module_api_name)
        if full_detail.nil?
          module_detail = get_module_detail_from_user_spec_json(module_api_name)
        else
          module_detail = full_detail[Constants::MODULEDETAILS]
          record_instance = Object.const_get(Utility.class_to_load(full_detail[Constants::MODULEPACKAGENAME])).new
        end
      end
      module_detail = module_detail.merge(class_detail)
      record_detail = Initializer.json_details[Constants::RECORD_NAMESPACE]

      # superclass check
      key_values = {}

      response_json.each_key do |key_name|
        member_name = build_name(key_name)
        key_detail = {}

        if !module_detail.empty? && (module_detail.key?(member_name) || module_detail.key?(key_name))

          key_detail = if module_detail.key? key_name
                         module_detail[key_name]
                       else
                         module_detail[member_name]
                       end
        elsif record_detail.key? member_name
          key_detail = record_detail[member_name]
        end

        key_data = response_json[key_name]
        key_value = nil

        if !key_detail.empty?
          key_name = key_detail[Constants::NAME]
          key_value = get_data(key_data, key_detail)
        else
          key_value = redirector_for_json_to_object(key_data)
        end

        key_values[key_name] = key_value
      end

      record_instance.instance_variable_set(Constants::AT + Constants::KEY_VALUES, key_values)
      record_instance
    end

    def get_data(key_data, member_detail)
      member_value = nil

      unless key_data.nil?
        type = member_detail[Constants::TYPE]

        if type.downcase == Constants::LIST_NAMESPACE.downcase
          member_value = get_collections_data(key_data, member_detail)
        elsif type.downcase == Constants::MAP_NAMESPACE.downcase
          member_value = get_map_data(key_data, member_detail)
        elsif (type.downcase == Constants::CHOICE_NAMESPACE.downcase) || (member_detail.key?(Constants::STRUCTURE_NAME) && (member_detail[Constants::STRUCTURE_NAME].downcase == Constants::CHOICE_NAMESPACE.downcase))
          member_value = get_choice_instance(key_data)
        elsif member_detail.key?(Constants::STRUCTURE_NAME) && member_detail.key?(Constants::MODULE)
          member_value = is_record_response(key_data, get_module_detail_from_user_spec_json(member_detail[Constants::MODULE]), member_detail[Constants::STRUCTURE_NAME])
        elsif member_detail.key? Constants::STRUCTURE_NAME
          member_value = get_response(key_data, member_detail[Constants::STRUCTURE_NAME])
        else
          member_value = DataTypeConverter.pre_convert(key_data, type)
        end
      end

      member_value
    end

    def get_map_data(response, member_detail)
      map_instance = {}
      unless response.empty?

        if member_detail.nil? || (!member_detail.nil? && !member_detail.include?(Constants::KEYS))
          response.each do |key, value|
            map_instance[key] = redirector_for_json_to_object(value)
          end
        elsif member_detail.key? Constants::KEYS
          keys_detail = member_detail[Constants::KEYS]

          keys_detail.each do |key_detail|
            key_name = key_detail[Constants::NAME]

            if response.key?(key_name) && !response[key_name].nil?
              key_value = get_data(response[key_name], key_detail)
              map_instance[key_name] = key_value
            end
          end
        end
      end
      map_instance
    end

    def get_collections_data(responses, member_detail)
      values = []

      unless responses.empty?

        if member_detail.nil? || (!member_detail.nil? && !(member_detail.include? Constants::STRUCTURE_NAME))

          responses.each do |response|
            values.push(redirector_for_json_to_object(response))
          end
        else
          pack = member_detail[Constants::STRUCTURE_NAME]

          if pack.downcase == Constants::CHOICE_NAMESPACE.downcase

            responses.each do |response|
              values.push(get_choice_instance(response))
            end
          elsif member_detail.key?(Constants::MODULE) && !member_detail[Constants::MODULE].nil?

            responses.each do |response|
              values.push(is_record_response(response, get_module_detail_from_user_spec_json(member_detail[Constants::MODULE]), pack))
            end
          else
            responses.each do |response|
              values.push(get_response(response, pack))
            end
          end
        end
      end

      values
    end

    def get_module_detail_from_user_spec_json(module_name)
      record_field_details = JSON.parse(File.read(Converter.new(nil).get_record_json_file_path))
      module_detail = Utility.get_json_object(record_field_details, module_name.downcase)
      module_detail
    end

    def redirector_for_json_to_object(key_data)
      if key_data.is_a? Hash
        get_map_data(key_data, nil)
      elsif key_data.is_a? Array
        get_collections_data(key_data, nil)
      else
        key_data
      end
    end

    def find_match(classes, response_json)
      pack = ''
      ratio = 0

      classes.each do |class_name|
        match_ratio = find_ratio(class_name, response_json)

        if match_ratio == 1.0
          pack = class_name
          ratio = 1
          break
        elsif match_ratio > ratio
          ratio = match_ratio
          pack = class_name.to_s
        end
      end

      get_response(response_json, pack)
    end

    def find_ratio(class_name, response_json)
      require_relative '../initializer'

      class_json_details = Initializer.json_details[class_name]
      total_points = class_json_details.keys.length
      matches = 0

      return 0 if total_points.zero?

      class_json_details.each_key do |member_name|
        member_json_details = class_json_details[member_name.to_s]
        key_name = nil
        key_name = member_json_details[Constants::NAME] if member_json_details.key? Constants::NAME

        if !key_name.nil? && response_json.key?(key_name.to_s) && !response_json[key_name].nil?
          key_data = response_json[key_name]
          type = key_data.class.name
          structure_name = nil

          if member_json_details.key? Constants::STRUCTURE_NAME
            structure_name = member_json_details[Constants::STRUCTURE_NAME]
          end

          if key_data.is_a? Integer
            type = Constants::INTEGER
          elsif key_data.is_a? String
            type = Constants::STRING
          elsif key_data.is_a? Float
            type = Constants::FLOAT
          elsif [true, false].include? key_data
            type = Constants::BOOLEAN
          elsif key_data.is_a? Hash
            type = Constants::MAP_NAMESPACE
          elsif key_data.is_a? Array
            type = Constants::LIST_NAMESPACE
          end

          if type == member_json_details[Constants::TYPE]
            matches += 1
          elsif member_json_details[Constants::TYPE].downcase == Constants::CHOICE_NAMESPACE.downcase
            member_json_details[Constants::VALUES].each do |value|
              if value == key_data
                matches += 1
                break
              end
            end
          end

          if !structure_name.nil? && (structure_name == member_json_details[Constants::TYPE])

            if member_json_details.key? Constants::VALUES

              member_json_details[Constants::VALUES].each do |value|
                if value == key_data
                  matches += 1
                  break
                end
              end
            else
              matches += 1
            end
          end
        end
      end

      matches / total_points.to_f
    end

    def get_choice_instance(data)
      class_path_split = Constants::CHOICE_NAMESPACE.split(Constants::DOT)
      module_name = class_path_split[-2]
      file_name = Utility.classname_to_filename(class_path_split[-1])
      require_relative '../' + module_name + '/' + file_name
      member_value = Object.const_get(Utility.class_to_load(Constants::CHOICE_NAMESPACE)).new(data)
      member_value
    end

    def build_name(member_name)
      sdk_name = ''
      name_split = member_name.to_s.split('_')
      sdk_name = name_split[0].to_s.downcase
      index = 1

      if name_split.length > 1
        index.upto(name_split.length - 1) do |name_index|
          if name_split[name_index].length > 1
            sdk_name += '_' + (name_split[name_index]).to_s.downcase
          end
        end
      end

      sdk_name
    end
  end
end
