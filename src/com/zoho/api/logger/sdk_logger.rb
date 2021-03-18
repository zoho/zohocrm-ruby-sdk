require 'webrick/log'
require 'webrick/accesslog'
require 'logger'

module SDKLog
  class Log
    attr_accessor :level, :path
    def initialize(level, path)
      @level = level
      @path = path
    end

    def self.initialize(level, path)
      Log.new(level, path)
    end
  end

  class SDKLogger
    @@path = nil
    @@level = nil
    @@log_levels_precedence = { 'FATAL' => 1,'SEVERE' => 1, 'ERROR' => 2, 'WARN' => 3, 'INFO' => 4, 'ALL' => 5,'DEBUG' => 5 ,'OFF' => 5}
    @@logger = nil

    def self.initialize(log)
      if(log.level != Levels::OFF) && !log.path.nil? && log.path.length > 0 
        File.new(log.path, 'w') unless File.exist? log.path if log.path != nil
        sdk_logger = WEBrick::BasicLog.new(log.path, @@log_levels_precedence[log.level])
      end

      if !log.level.nil?
        sdk_logger = WEBrick::BasicLog.new(nil, @@log_levels_precedence[log.level])
      end

      @@logger = sdk_logger

    rescue StandardError => e
      raise SDKException.new(nil, Constants::SDK_LOGGER_INITIALIZE, nil, e)
    end

    def self.info(message)
      @@logger&.info(Time.new.to_s + ' ' + message)
    end

    def self.error(message, exception = nil)
      unless exception.nil?
        exception.to_s
        message = message + exception.to_s + exception.backtrace.join("\n")
      end
      @@logger&.error(Time.new.to_s + ' ' + message)
    end

    def self.warn(message)
      @@logger&.warn(Time.new.to_s + ' ' + message)
    end

    def self.severe(message, exception = nil)
     
      message = message + exception.to_s + exception.backtrace.join("\n") unless exception.nil?
      @@logger&.fatal(Time.new.to_s + ' ' + message)
    end
  end
end

module Levels
  SEVERE = 'SEVERE'
  INFO = 'INFO'
  WARNING = 'WARNING'
  ERROR = 'ERROR'
  DEBUG = 'DEBUG'
  ALL = 'ALL'
  OFF = 'OFF'
  FATAL = 'FATAL'
end
