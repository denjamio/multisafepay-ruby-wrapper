module Multisafepay
  class TransactionsResource < Resource
    def all
      get_request("transactions")
    end
  end
end
