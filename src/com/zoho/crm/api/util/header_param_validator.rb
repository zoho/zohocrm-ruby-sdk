module Util
  class HeaderParamValidator
    def validate(header_param, value)
      name = header_param.name
      class_name = header_param.class_name
      json_details = get_json_details
      split_names = class_name.split(Constants::DOT)
      structure_name = ''
      (0..split_names.length - 2).each do |i|
        changed_class_name = ''
        camel_case_split = (split_names[i].to_s.split(/([[:upper:]][[:lower:]]+)/)).delete_if(&:empty?)
        camel_case_split.each_with_index do |each_name, j|
          changed_class_name += Constants::UNDERSCORE if j.positive?
          changed_class_name += each_name.to_s.downcase
        end
        structure_name += changed_class_name + Constants::DOT
      end
      structure_name += split_names[split_names.length - 1]
      type_detail = []
      type_detail = get_key_json_details(name, json_details[structure_name]) if json_details.key? structure_name
      unless type_detail.empty?
        type = type_detail[Constants::TYPE]
        if !Utility.check_data_type(value,type)
          details_jo = {}
          details_jo[Constants::HEADER_OR_PARAM_NAME] = name
          details_jo[Constants::ERROR_HASH_CLASS] = class_name
          details_jo[Constants::ERROR_HASH_EXPECTED_TYPE] = type
          raise SDKException.new(Constants::TYPE_ERROR, nil, details_jo, nil)
        else
          value = Util::DataTypeConverter.post_convert(value, type)
        end
      end
      value
    end

    def get_json_details
      json_details = Initializer.json_details
      if json_details.nil?
        json_details = JSON.parse(File.open(File.join(File.dirname(File.expand_path(__FILE__)), '../../../../../' + Constants::JSON_DETAILS_FILE_PATH)).read)
      end
      json_details
    rescue StandardError => e
      raise SDKException.new(nil, Constants::EXCEPTION_JSONDETAILS, nil, e)
    end

    def get_key_json_details(name, json_details)
      json_details.each_key do |key|
        json_detail = json_details[key]
        if json_detail.key? Constants::NAME
          return json_detail if name.downcase == json_detail[Constants::NAME].downcase
        end
      end
    end
  end
end
