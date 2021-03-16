require 'json'
require 'monitor'

module Util
  class ModuleFieldsHandler
    @@sync_lock = Monitor.new

    def self.delete_fields_file
      @@sync_lock.synchronize do
        record_field_details_path = Converter.new(nil).get_record_json_file_path
        File.delete(record_field_details_path) if File.exist? record_field_details_path
      end
    rescue StandardError => e
      ex = SDKException.new(nil, nil, nil, e)
      SDKLog::SDKLogger.severe(Constants::DELETE_FIELD_FILE_ERROR, ex)
      raise ex
    end

    def self.delete_all_fields_file
      @@sync_lock.synchronize do
        initializer = Initializer.get_initializer
        resources_path = initializer.resources_path + '/' + Constants::RESOURCES
        if Dir.exist? resources_path
          Dir.foreach(resources_path) do |f|
            File.delete(resources_path + '/' + f) if (f != '.') && (f != '..')
          end
        end
      end
    rescue StandardError => e
      ex = SDKException.new(nil, nil, nil, e)
      SDKLog::SDKLogger.severe(Constants::DELETE_FIELD_FILES_ERROR, ex)
      raise ex
    end

    def self.delete_fields(module_api_name)
      record_field_details_path = Converter.new(nil).get_record_json_file_path
      if File.exist? record_field_details_path
        record_field_details_json = JSON.parse(File.read(record_field_details_path))
        if record_field_details_json.key? module_api_name.downcase
          Utility.delete_fields(record_field_details_json,module_api_name)
          File.open(record_field_details_path, 'w') do |f|
            f.write(record_field_details_json.to_json)
          end
        end
      end
    rescue StandardError => e
      ex = SDKException.new(nil, nil, nil, e)
      raise ex
    end

    def self.refresh_fields(module_api_name)
      @@sync_lock.synchronize do
        delete_fields(module_api_name)
        Utility.get_fields(module_api_name)
      end
    rescue SDKException => e
      SDKLog::SDKLogger.severe(Constants::REFRESH_SINGLE_MODULE_FIELDS_ERROR + module_api_name, e)
      raise e
    rescue StandardError => e
      ex = SDKException.new(nil, nil, nil, e)
      SDKLog::SDKLogger.severe(Constants::REFRESH_SINGLE_MODULE_FIELDS_ERROR + module_api_name, ex)
      raise ex
    end

    def self.refresh_all_modules
      @@sync_lock.synchronize do
        Utility.refresh_modules
      end
    rescue SDKException => e
      SDKLog::SDKLogger.severe(Constants::REFRESH_ALL_MODULE_FIELDS_ERROR, e)
      raise e
    rescue StandardError => e
      ex = SDKException.new(nil, nil, nil, e)
      SDKLog::SDKLogger.severe(Constants::REFRESH_ALL_MODULE_FIELDS_ERROR, ex)
      raise ex
    end
  end
end
