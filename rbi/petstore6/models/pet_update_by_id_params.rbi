# typed: strong

module Petstore6
  module Models
    class PetUpdateByIDParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Petstore6::PetUpdateByIDParams, Petstore6::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :pet_id

      # Name of pet that needs to be updated
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Status of pet that needs to be updated
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          pet_id: Integer,
          name: String,
          status: String,
          request_options: Petstore6::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        pet_id:,
        # Name of pet that needs to be updated
        name: nil,
        # Status of pet that needs to be updated
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            pet_id: Integer,
            name: String,
            status: String,
            request_options: Petstore6::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
