require_relative 'util/constants'

class RequestProxy
  attr_accessor :host, :port, :user_name, :password
  def initialize(host, port, user_name = nil, password = nil)
    raise SDKException.new(Constants::REQUEST_PROXY_ERROR, Constants::HOST_ERROR_MESSAGE) if host.nil?

    raise SDKException.new(Constants::REQUEST_PROXY_ERROR, Constants::PORT_ERROR_MESSAGE) if port.nil?

    @host = host
    @port = port
    @user_name = user_name
    @password = password
    @password = '' if password.nil?
  end
end
