module Multisafepay
  class TokensResource < Resource
    def create
      Token.new get_request("auth/api_token")
    end

    def retrieve(customer_reference:, token: nil)
      url = token.nil? ? "recurring/#{customer_reference}" : "recurring/#{customer_reference}/token/#{token}"
      Token.new get_request(url)
    end

    def update(customer_reference:, token:, **attributes)
      Token.new patch_request("recurring/#{customer_reference}/update/#{token}", body: attributes)
    end

    def delete(customer_reference:, token:)
      Token.new delete_request("recurring/#{customer_reference}/token/#{token}")
    end
  end
end
