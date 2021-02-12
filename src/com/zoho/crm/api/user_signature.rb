require_relative '../../api/logger/sdk_logger'
# This class represents the CRM user email.
class UserSignature
  attr_reader :email

  # Creates an UserSignature class instance with the specified user email.
  # @param email [String] A String containing the CRM user email
  # @raise SDKException
  def initialize(email)
    require_relative 'util/constants'

    error = {}

    if (email.match Constants::EMAIL_REGEX).nil?
      error[Constants::ERROR_HASH_FIELD] = Constants::EMAIL

      error[Constants::ERROR_HASH_EXPECTED_TYPE] = Constants::EMAIL

      ex = SDKException.new(Constants::USER_SIGNATURE_ERROR, nil, error, nil)

      raise ex

    end

    @email = email
  end
end
