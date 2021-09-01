module Multisafepay
  class TransactionsResource < Resource
    def list
      Transaction.new get_request("transactions")
    end
  end
end
