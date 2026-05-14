# typed: strong

module Petstore6
  module Models
    class UserRetrieveParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Petstore6::UserRetrieveParams, Petstore6::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :username

      sig do
        params(
          username: String,
          request_options: Petstore6::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(username:, request_options: {})
      end

      sig do
        override.returns(
          { username: String, request_options: Petstore6::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
