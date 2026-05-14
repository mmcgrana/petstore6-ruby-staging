# typed: strong

module Petstore6
  module Models
    class PetFindByStatusParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Petstore6::PetFindByStatusParams, Petstore6::Internal::AnyHash)
        end

      # Status values that need to be considered for filter
      sig do
        returns(T.nilable(Petstore6::PetFindByStatusParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Petstore6::PetFindByStatusParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          status: Petstore6::PetFindByStatusParams::Status::OrSymbol,
          request_options: Petstore6::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Status values that need to be considered for filter
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: Petstore6::PetFindByStatusParams::Status::OrSymbol,
            request_options: Petstore6::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Status values that need to be considered for filter
      module Status
        extend Petstore6::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Petstore6::PetFindByStatusParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE =
          T.let(
            :available,
            Petstore6::PetFindByStatusParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Petstore6::PetFindByStatusParams::Status::TaggedSymbol
          )
        SOLD =
          T.let(:sold, Petstore6::PetFindByStatusParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Petstore6::PetFindByStatusParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
