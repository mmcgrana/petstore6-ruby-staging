# typed: strong

module Petstore6
  module Models
    module Store
      class OrderDeleteParams < Petstore6::Internal::Type::BaseModel
        extend Petstore6::Internal::Type::RequestParameters::Converter
        include Petstore6::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Petstore6::Store::OrderDeleteParams,
              Petstore6::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :order_id

        sig do
          params(
            order_id: Integer,
            request_options: Petstore6::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(order_id:, request_options: {})
        end

        sig do
          override.returns(
            { order_id: Integer, request_options: Petstore6::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
