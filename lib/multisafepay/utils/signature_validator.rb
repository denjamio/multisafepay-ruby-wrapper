module Multisafepay
  module Utils
    class SignatureValidator
      class << self
        def valid_signature?(auth_header, payload, api_key)
          timestamp, provided_sign = decode(auth_header)
          expected_sign = calculate_sign(api_key, timestamp, payload)

          expected_sign == provided_sign
        end

        private

        def decode(auth_header)
          Base64.decode64(auth_header).split(":")
        end

        def calculate_sign(key, timestamp, payload)
          data = data_to_sign(timestamp, payload)
          OpenSSL::HMAC.hexdigest(digest, key, data)
        end

        def data_to_sign(timestamp, payload)
          "#{timestamp}:#{payload}"
        end
      end
    end
  end
end