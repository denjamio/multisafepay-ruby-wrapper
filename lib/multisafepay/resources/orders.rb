module Multisafepay
  class OrdersResource < Resource
    def find(order_id:)
      get_request("orders/#{order_id}")
    end

    def create(**attributes)
      post_request("orders", body: attributes)
    end

    def update(order_id:, **attributes)
      patch_request("orders/#{order_id}", body: attributes)
    end

    def delete(order_id:)
      delete_request("orders/#{order_id}")
    end
  end
end
