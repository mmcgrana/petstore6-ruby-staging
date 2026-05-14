# typed: strong

module Petstore6
  module Models
    class UserCreateWithListParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Petstore6::UserCreateWithListParams,
            Petstore6::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Petstore6::User])) }
      attr_reader :items

      sig { params(items: T::Array[Petstore6::User::OrHash]).void }
      attr_writer :items

      sig do
        params(
          items: T::Array[Petstore6::User::OrHash],
          request_options: Petstore6::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(items: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            items: T::Array[Petstore6::User],
            request_options: Petstore6::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
