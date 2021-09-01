module Multisafepay
  class GatewaysResource < Resource
    def list
      get_request("gateways")
    end

    def retrieve(id)
      get_request("gateways/#{id}")
    end
  end
end
