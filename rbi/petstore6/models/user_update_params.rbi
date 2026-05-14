# typed: strong

module Petstore6
  module Models
    class UserUpdateParams < Petstore6::Models::User
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Petstore6::UserUpdateParams, Petstore6::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :existing_username

      sig do
        params(
          existing_username: String,
          request_options: Petstore6::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(existing_username:, request_options: {})
      end

      sig do
        override.returns(
          {
            existing_username: String,
            request_options: Petstore6::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
