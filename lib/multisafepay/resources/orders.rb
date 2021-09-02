module Multisafepay
  class OrdersResource < Resource
    def retrieve(id:)
      Order.new get_request("orders/#{id}")
    end

    def create(**attributes)
      Order.new post_request("orders", body: attributes)
    end

    def update(**attributes)
      Order.new patch_request("orders/#{attributes.fetch(:id)}", body: attributes)
    end

    def cancel(id:, **attributes)
      Order.new patch_request("orders/#{id}", body: attributes)
    end

    def capture(id:, **attributes)
      Order.new post_request("orders/#{id}/capture", body: attributes)
    end

    def refund(**attributes)
      Order.new post_request("orders/#{attributes.fetch(:order_id)}/refunds", body: attributes)
    end
  end
end
