module Multisafepay
  class TokensResource < Resource
    def generate
      Token.new get_request("auth/api_token")
    end

    def retrieve(your_customer_reference:, your_token: nil)
      url = your_token.nil? ? "recurring/#{your_customer_reference}" : "recurring/#{your_customer_reference}/token/#{your_token}"
      Token.new get_request(url)
    end

    def update(your_customer_reference:, your_token:, **attributes)
      Token.new patch_request("recurring/#{your_customer_reference}/update/#{your_token}", body: attributes)
    end

    def delete(your_customer_reference:, your_token:)
      Token.new delete_request("recurring/#{your_customer_reference}/token/#{your_token}")
    end
  end
end
