module Multisafepay
  class OrdersResource < Resource
    def retrieve(id)
      Order.new get_request("orders/#{id}")
    end

    def create(**payload)
      Order.new post_request("orders", body: payload)
    end

    def update(id, payload = {})
      Order.new patch_request("orders/#{id}", body: payload)
    end

    def cancel(id, payload = {})
      Order.new patch_request("orders/#{id}", body: payload)
    end

    def capture(id, payload = {})
      Order.new post_request("orders/#{id}/capture", body: payload)
    end

    def refund(id, payload = {})
      Order.new post_request("orders/#{id}/refunds", body: payload)
    end
  end
end
