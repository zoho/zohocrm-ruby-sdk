# This class is the common SDKException object.
class SDKException < StandardError
  attr_reader :code, :message, :cause, :details, :back_trace

  # Creates an SDKException class instance with the specified parameters.
  # @param code A String containing the Exception error code.
  # @param message A String containing the Exception error message.
  # @param details A hash containing the error response.
  # @param cause An Exception class instance.
  def initialize(code, message, details = nil, cause = nil)
    @code = code
    @message = message
    @cause = cause
    @details = details

    return if cause.nil?

    set_backtrace(cause.backtrace)
    @message = '' if @message.nil?
    if cause.is_a? SDKException
      @message += cause.to_s
    else
      cause_message = if cause.message.nil?
                        cause.class.name
                      else
                        cause.class.name + ' : ' + cause.message
                      end

      @message = @message.nil? ? cause_message : @message + cause_message
    end
  end

  def to_s
    return_msg = ''

    unless @details.nil?
      @message = @message.nil? ? @details.to_s : (@message + @details.to_s)
    end

    return_msg += if @code.nil?
                    @message
                  else
                    @code + '_' + @message
                  end
    return_msg
  end
end
