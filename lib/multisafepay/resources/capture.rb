module Multisafepay
  class CaptureResource < Resource
    def cancel(order_id:, **attributes)
      Capture.new patch_request("capture/#{order_id}", body: attributes)
    end
  end
end
