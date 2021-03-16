require_relative 'model'
require_relative 'constants'

module Util
  # This class handles the file stream and name.
  class StreamWrapper
    include Model

    # Creates a StreamWrapper class instance with the specified parameters.
    # @param name [String] A String containing the file name.
    # @param stream An InputStream containing the file stream.
    # @param file_path [String] A String containing the absolute file path.
    def initialize(name = nil, stream = nil, file_path = nil)
      @name = name

      @stream = stream
      return if file_path.nil?
      if File.exist? file_path
        file = File.open(file_path)

        @name = File.basename(file_path)

        @stream = file.read
      else 
        raise SDKException.new(Constants::FILE_ERROR,Constants::FILE_DOES_NOT_EXISTS + " " + file_path)
      end
    end

    def name
      @name
    end

    def stream
      @stream
    end
  end
end
