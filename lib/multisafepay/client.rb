module Multisafepay
  class Client
    attr_reader :api_key, :env, :adapter

    def initialize(api_key: nil, env: :live, adapter: Faraday.default_adapter)
      @api_key = api_key
      @env = env
      @adapter = adapter
    end

    def accounts
      AccountResource.new(self)
    end

    def capture
      CaptureResource.new(self)
    end

    def gateways
      GatewaysResource.new(self)
    end

    def orders
      OrdersResource.new(self)
    end

    def tokens
      TokensResource.new(self)
    end

    def transactions
      TransactionsResource.new(self)
    end

    def connection
      @connection ||= Faraday.new do |conn|
        conn.url_prefix = base_url
        conn.headers["api_key"] = api_key
        conn.request :json

        conn.response :json, content_type: "application/json"

        conn.adapter adapter
      end
    end

    private

    def base_url
      case env
      when :live
        "https://api.multisafepay.com/v1/json"
      when :test
        "https://testapi.multisafepay.com/v1/json"
      end
    end
  end
end
