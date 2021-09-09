module Multisafepay
  class AccountResource < Resource
    def balances(affiliated_id)
      Account.new get_request("accounts/#{affiliated_id}/balances")
    end

    def charges(affiliated_id, payload = {})
      Account.new post_request("accounts/#{affiliated_id}/charges", body: payload)
    end

    def payouts(affiliated_id, payload = {})
      Account.new post_request("accounts/#{affiliated_id}/payouts", body: payload)
    end
  end
end
