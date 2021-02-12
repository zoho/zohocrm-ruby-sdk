# This class represents the HTTP header name
class Header
  attr_accessor :name, :class_name
  # Creates an Header class instance with the specified header name.
  # @param name [String] A String containing the header name.
  def initialize(name, class_name = nil)
    @name = name
    @class_name = class_name
  end
end
