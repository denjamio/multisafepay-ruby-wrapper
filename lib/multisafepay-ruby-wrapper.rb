require "faraday"
require "faraday_middleware"
require "multisafepay/version"

module Multisafepay
  autoload :Client, "multisafepay/client"
  autoload :Error, "multisafepay/error"
  autoload :Resource, "multisafepay/resource"

  autoload :AccountResource, "multisafepay/resources/account"
  autoload :GatewaysResource, "multisafepay/resources/gateways"
  autoload :OrdersResource, "multisafepay/resources/orders"
  autoload :TokensResource, "multisafepay/resources/tokens"
  autoload :TransactionsResource, "multisafepay/resources/transactions"
end
