require 'date'
require 'time'
require 'monitor'
require_relative 'constants'

module Util
  # This class converts JSON value to the expected data type.
  class DataTypeConverter
    @@sync_lock = Monitor.new

    @@pre_converter_map = {}

    @@post_converter_map = {}

    # This method is to initialize the PreConverter and PostConverter lambda functions.
    def self.init
      return unless @@pre_converter_map.empty? && @@post_converter_map.empty?

      @@sync_lock.synchronize do
        add_to_map(DateTime.name,
                   lambda do |obj|
                     return DateTime.parse(Time.parse(obj).localtime.to_s)
                   end,
                   lambda do |obj|
                     return obj.strftime('%FT%T%:z')
                   end)

        add_to_map(Date.name,
                   lambda do |obj|
                     return Date.parse(obj)
                   end,
                   lambda do |obj|
                     return obj.strftime('%F')
                   end)
        add_to_map(Constants::DATETIME_NAMESPACE,
                    lambda do |obj|
                      return DateTime.parse(Time.parse(obj).localtime.to_s)
                    end,
                    lambda do |obj|
                      return obj.strftime('%FT%T%:z')
                    end)
 
         add_to_map(Constants::DATE_NAMESPACE,
                    lambda do |obj|
                      return Date.parse(obj)
                    end,
                    lambda do |obj|
                      return obj.strftime('%F')
                    end)

        string = lambda do |obj|
          return obj.to_s
        end
        add_to_map(String.name, string, string)
        add_to_map(Constants::STRING, string, string)

        integer = lambda do |obj|
          if obj == Constants::NULL_VALUE
            return nil
          end
          return obj.to_i
        end

        add_to_map(Integer.name, integer, integer)
        add_to_map(Constants::INTEGER, integer, integer)
        add_to_map(Constants::LONG, integer, integer)

        pre_convert_object = lambda do |obj|
          return pre_convert_object_data(obj)
        end

        post_convert_object = lambda do |obj|
          return post_convert_object_data(obj)
        end

        add_to_map(Constants::OBJECT,pre_convert_object, post_convert_object)

        bool = lambda do |obj|
          return obj
        end

        add_to_map(Constants::BOOLEAN, bool, bool)

        float = lambda do |obj|
          return obj.to_f
        end

        add_to_map(Float.name, float, float)
        add_to_map(Constants::FLOAT, float, float)
        add_to_map(Constants::DOUBLE, float, float)
      end
    end

    # This method is to add PreConverter and PostConverter instance.
    # @param name [String] A String containing the data type class name.
    # @param pre_converter [Object] A PreConverter instance.
    # @param post_converter [Object] A PostConverter instance.
    def self.add_to_map(name, pre_converter, post_converter)
      @@pre_converter_map[name] = pre_converter

      @@post_converter_map[name] = post_converter
    end

    # This method is to convert JSON value to expected data value.
    # @param obj [Object] A Object containing the JSON value.
    # @param type [String] A String containing the expected method return type.
    # @return A Value containing the expected data value.
    # @raise Exception
    def self.pre_convert(obj, type)
      init
      @@pre_converter_map[type].call(obj)
    end

    # This method is to convert Java data to JSON data value.
    # @param obj [Object] R containing the Java data value.
    # @param type [String] A String containing the expected method return type.
    # @return An Object containing the expected data value.
    # @raise Exception
    def self.post_convert(obj, type)
      init
      @@post_converter_map[type].call(obj)
    end

    def self.pre_convert_object_data(obj)
      return obj
    end

    def self.post_convert_object_data(obj)
      if obj.nil?
        return nil
      end

      if obj.is_a? DateTime
        return DataTypeConverter.post_convert(obj, Constants::DATETIME_NAMESPACE)
      end

      if obj.is_a? Date
        return DataTypeConverter.post_convert(obj, Constants::DATE_NAMESPACE)
      end

      if obj.is_a? Array
        values = []
        unless obj.empty?
          obj.each do |value|
            values.push(DataTypeConverter.post_convert_object_data(value))
          end
        end
        return values
      elsif obj.is_a? Hash
        map_instance = {}
        unless obj.empty?
          obj.each do |key, value|
            map_instance[key] = DataTypeConverter.post_convert_object_data(value)
          end
        end
        return map_instance
      else
        return obj
      end 
    end
  end
end
