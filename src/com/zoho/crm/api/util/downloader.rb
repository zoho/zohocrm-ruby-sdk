require_relative 'converter'
require_relative 'stream_wrapper'
require_relative 'constants'
module Util
  # This class is to process the download file and stream response.
  class Downloader < Converter
    attr_accessor :unique_hash

    def initialize(common_api_handler)
      @unique_hash = {}

      super(common_api_handler)
    end

    def append_to_request(request, request_object); end

    def form_request(request_instance, class_path, member_json_details = nil); end

    def get_wrapped_response(response, class_path)
      get_response(response, class_path)
    end

    def get_response(response_object, class_path)
      require_relative '../initializer'

      json_details = Initializer.json_details

      if class_path.to_s.include? Constants::DOUBLE_COLON
        class_path_split = class_path.to_s.split(Constants::DOUBLE_COLON)
        module_name = Utility.classname_to_filename(class_path_split[0])
        file_name = Utility.classname_to_filename(class_path_split[1])
      else
        class_path_split = class_path.to_s.split(Constants::DOT)
        module_name = class_path_split[-2]
        file_name = Utility.classname_to_filename(class_path_split[-1])
      end

      require_relative '../' + module_name + '/' + file_name

      package_name = Utility.path_to_package(class_path)
      class_details = json_details[package_name]

      if class_details.key?(Constants::INTERFACE) && !class_details[Constants::INTERFACE].nil? && class_details[Constants::INTERFACE]
        classes = class_details[Constants::CLASSES]
        classes.each do |class_name|
          return get_response(response_object, class_name) if class_name.include? Constants::FILEBODYWRAPPER
        end
        return nil
      else

        instance = if class_path.is_a? String

                     if class_path.include? Constants::DOUBLE_COLON
                       Object.const_get(class_path).new
                     else
                       Object.const_get(Utility.class_to_load(class_path)).new
                     end
                   else
                     Object.const_get(Utility.class_to_load(class_path.to_s)).new
                   end

        class_details.each do |member_name, member_json_details|
          type = member_json_details[Constants::TYPE]

          if type.downcase == Constants::STREAM_WRAPPER_CLASS_PATH.downcase
            file_name = response_object.to_hash[Constants::CONTENT_DISPOSITION][0].split('=')[1]

            file_name = file_name.split("''")[1] if file_name.include? "''"

            file_name = file_name.gsub('"', '') if file_name.include? '"'

            file_instance = Util::StreamWrapper.new(file_name, response_object.body)
            instance_value = file_instance
          end

          instance.instance_variable_set(Constants::AT + member_name, instance_value)
        end
      end

      instance
    end
  end
end
