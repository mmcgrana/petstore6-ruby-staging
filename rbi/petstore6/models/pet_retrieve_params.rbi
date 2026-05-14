# typed: strong

module Petstore6
  module Models
    class PetRetrieveParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Petstore6::PetRetrieveParams, Petstore6::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :pet_id

      sig do
        params(
          pet_id: Integer,
          request_options: Petstore6::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(pet_id:, request_options: {})
      end

      sig do
        override.returns(
          { pet_id: Integer, request_options: Petstore6::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
