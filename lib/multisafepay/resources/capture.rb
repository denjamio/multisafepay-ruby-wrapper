module Multisafepay
  class CaptureResource < Resource
    def cancel(order_id, payload = {})
      Capture.new patch_request("capture/#{order_id}", body: payload)
    end
  end
end
