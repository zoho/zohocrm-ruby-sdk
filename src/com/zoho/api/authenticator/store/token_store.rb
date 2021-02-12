module Store
  class TokenStore
    # This method is used to get the user token details.
    # @param user A UserSignature class instance.
    # @param token A Token class instance.
    # @return A Token class instance representing the user token details.
    # @raise SDKException
    def get_token(user, token); end

    def get_tokens; end

    # This method is used to store the user token details.
    # @param user A UserSignature class instance.
    # @param token A Token class instance.
    # @raise SDKException
    def save_token(user, token); end

    # This method is used to delete the user token details.
    # @param user A User class instance.
    # @param token A Token class instance.
    # @raise SDKException
    def delete_token(token); end

    def delete_tokens; end
  end
end
