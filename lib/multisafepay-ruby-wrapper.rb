require "faraday"
require "faraday_middleware"
require "multisafepay/version"

module Multisafepay
  autoload :Client, "multisafepay/client"
  autoload :Error, "multisafepay/error"
  autoload :Object, "multisafepay/object"
  autoload :Resource, "multisafepay/resource"

  autoload :AccountsResource, "multisafepay/resources/accounts"
  autoload :CaptureResource, "multisafepay/resources/capture"
  autoload :GatewaysResource, "multisafepay/resources/gateways"
  autoload :OrdersResource, "multisafepay/resources/orders"
  autoload :TokensResource, "multisafepay/resources/tokens"
  autoload :TransactionsResource, "multisafepay/resources/transactions"

  autoload :Account, "multisafepay/objects/account"
  autoload :Capture, "multisafepay/objects/capture"
  autoload :Gateway, "multisafepay/objects/gateway"
  autoload :Order, "multisafepay/objects/order"
  autoload :Token, "multisafepay/objects/token"
  autoload :Transaction, "multisafepay/objects/transaction"

  autoload :SignatureValidator, "multisafepay/utils/signature_validator"
end
