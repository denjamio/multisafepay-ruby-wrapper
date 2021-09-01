module Multisafepay
  class TransactionsResource < Resource
    def list
      get_request("transactions")
    end
  end
end
