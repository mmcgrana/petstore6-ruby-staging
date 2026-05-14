# typed: strong

module Petstore6
  module Models
    class PetUploadImageParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Petstore6::PetUploadImageParams, Petstore6::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :pet_id

      sig { returns(Petstore6::Internal::FileInput) }
      attr_accessor :image

      # Additional Metadata
      sig { returns(T.nilable(String)) }
      attr_reader :additional_metadata

      sig { params(additional_metadata: String).void }
      attr_writer :additional_metadata

      sig do
        params(
          pet_id: Integer,
          image: Petstore6::Internal::FileInput,
          additional_metadata: String,
          request_options: Petstore6::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        pet_id:,
        image:,
        # Additional Metadata
        additional_metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            pet_id: Integer,
            image: Petstore6::Internal::FileInput,
            additional_metadata: String,
            request_options: Petstore6::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
