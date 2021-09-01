module Multisafepay
  class OrdersResource < Resource
    def retrieve(id)
      Order.new get_request("orders/#{id}")
    end

    def create(**attributes)
      Order.new post_request("orders", body: attributes)
    end

    def update(id:, **attributes)
      Order.new patch_request("orders/#{id}", body: attributes)
    end

    def delete(id:, **attributes)
      Order.new patch_request("orders/#{id}", body: attributes)
    end
  end
end
