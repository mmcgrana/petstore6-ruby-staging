# typed: strong

module Petstore6
  module Models
    class Pet < Petstore6::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Petstore6::Pet, Petstore6::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[String]) }
      attr_accessor :photo_urls

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(Petstore6::Category)) }
      attr_reader :category

      sig { params(category: Petstore6::Category::OrHash).void }
      attr_writer :category

      # pet status in the store
      sig { returns(T.nilable(Petstore6::Pet::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Petstore6::Pet::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(T::Array[Petstore6::Tag])) }
      attr_reader :tags

      sig { params(tags: T::Array[Petstore6::Tag::OrHash]).void }
      attr_writer :tags

      sig do
        params(
          name: String,
          photo_urls: T::Array[String],
          id: Integer,
          category: Petstore6::Category::OrHash,
          status: Petstore6::Pet::Status::OrSymbol,
          tags: T::Array[Petstore6::Tag::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        photo_urls:,
        id: nil,
        category: nil,
        # pet status in the store
        status: nil,
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            photo_urls: T::Array[String],
            id: Integer,
            category: Petstore6::Category,
            status: Petstore6::Pet::Status::TaggedSymbol,
            tags: T::Array[Petstore6::Tag]
          }
        )
      end
      def to_hash
      end

      # pet status in the store
      module Status
        extend Petstore6::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Petstore6::Pet::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE = T.let(:available, Petstore6::Pet::Status::TaggedSymbol)
        PENDING = T.let(:pending, Petstore6::Pet::Status::TaggedSymbol)
        SOLD = T.let(:sold, Petstore6::Pet::Status::TaggedSymbol)

        sig { override.returns(T::Array[Petstore6::Pet::Status::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
