module Multisafepay
  class GatewaysResource < Resource
    def list(**params)
      Gateway.new get_request("gateways", params: params)
    end

    def retrieve(id, params = {})
      Gateway.new get_request("gateways/#{id}", params: params)
    end
  end
end
