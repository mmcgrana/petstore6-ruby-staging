# typed: strong

module Petstore6
  module Models
    module Store
      class OrderCreateParams < Petstore6::Models::Order
        extend Petstore6::Internal::Type::RequestParameters::Converter
        include Petstore6::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Petstore6::Store::OrderCreateParams,
              Petstore6::Internal::AnyHash
            )
          end

        sig do
          params(request_options: Petstore6::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: Petstore6::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end
