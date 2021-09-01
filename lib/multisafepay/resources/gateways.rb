module Multisafepay
  class GatewaysResource < Resource
    def list
      Gateway.new get_request("gateways")
    end

    def retrieve(id)
      Gateway.new get_request("gateways/#{id}")
    end
  end
end
