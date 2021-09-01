module Multisafepay
  class GatewaysResource < Resource
    def all
      get_request("gateways")
    end

    def find(id:)
      get_request("gateways/#{id}")
    end
  end
end
