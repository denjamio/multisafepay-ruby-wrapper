module Multisafepay
  class AccountResource < Resource
    def balances(affiliated_id:)
      get_request("accounts/#{affiliated_id}/balances")
    end

    def charges(affiliated_id:, **attributes)
      post_request("accounts/#{affiliated_id}/charges", body: attributes)
    end

    def payouts(affiliated_id:, **attributes)
      post_request("accounts/#{affiliated_id}/payouts", body: attributes)
    end
  end
end
