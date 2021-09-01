module Multisafepay
  class OrdersResource < Resource
    def retrieve(id)
      get_request("orders/#{id}")
    end

    def create(**attributes)
      post_request("orders", body: attributes)
    end

    def update(id:, **attributes)
      patch_request("orders/#{id}", body: attributes)
    end

    def delete(id:, **attributes)
      patch_request("orders/#{id}", body: attributes)
    end
  end
end
