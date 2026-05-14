# typed: strong

module Petstore6
  module Models
    class PetFindByTagsParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Petstore6::PetFindByTagsParams, Petstore6::Internal::AnyHash)
        end

      # Tags to filter by
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          tags: T::Array[String],
          request_options: Petstore6::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Tags to filter by
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { tags: T::Array[String], request_options: Petstore6::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
