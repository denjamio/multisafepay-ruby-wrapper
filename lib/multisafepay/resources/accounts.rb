module Multisafepay
  class AccountsResource < Resource
    def balances(affiliated_id:)
      Account.new get_request("accounts/#{affiliated_id}/balances")
    end

    def charges(affiliated_id:, **attributes)
      Account.new post_request("accounts/#{affiliated_id}/charges", body: attributes)
    end

    def payouts(affiliated_id:, **attributes)
      Account.new post_request("accounts/#{affiliated_id}/payouts", body: attributes)
    end
  end
end
