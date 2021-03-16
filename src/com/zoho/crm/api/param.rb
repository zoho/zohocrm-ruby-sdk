# This class represents the HTTP header name
class Param
  attr_accessor :name, :class_name
  # Creates a Param class instance with the specified header name.
  # @param name [String] A String containing the param name.
  def initialize(name, class_name = nil)
    @name = name
    @class_name = class_name
  end
end
