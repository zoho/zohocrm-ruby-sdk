module Response
  # This class is the common API response object.
  class APIResponse
    attr_reader :headers, :status_code, :data_object, :is_expected
    # Creates an APIResponse class instance with the specified parameters.
    # @param headers A Hash containing the API response headers.
    # @param status_code A Integer containing the API response HTTP status code.
    # @param object A Object containing the API response class instance.
    def initialize(headers, status_code, object, is_expected)
      @headers = headers
      @status_code = status_code
      @data_object = object
      @is_expected = is_expected
    end
  end
end
