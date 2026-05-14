# typed: strong

module Petstore6
  module Models
    class Order < Petstore6::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Petstore6::Order, Petstore6::Internal::AnyHash) }

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :complete

      sig { params(complete: T::Boolean).void }
      attr_writer :complete

      sig { returns(T.nilable(Integer)) }
      attr_reader :pet_id

      sig { params(pet_id: Integer).void }
      attr_writer :pet_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :quantity

      sig { params(quantity: Integer).void }
      attr_writer :quantity

      sig { returns(T.nilable(Time)) }
      attr_reader :ship_date

      sig { params(ship_date: Time).void }
      attr_writer :ship_date

      # Order Status
      sig { returns(T.nilable(Petstore6::Order::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Petstore6::Order::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          id: Integer,
          complete: T::Boolean,
          pet_id: Integer,
          quantity: Integer,
          ship_date: Time,
          status: Petstore6::Order::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        complete: nil,
        pet_id: nil,
        quantity: nil,
        ship_date: nil,
        # Order Status
        status: nil
      )
      end

      sig do
        override.returns(
          {
            id: Integer,
            complete: T::Boolean,
            pet_id: Integer,
            quantity: Integer,
            ship_date: Time,
            status: Petstore6::Order::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Order Status
      module Status
        extend Petstore6::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Petstore6::Order::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLACED = T.let(:placed, Petstore6::Order::Status::TaggedSymbol)
        APPROVED = T.let(:approved, Petstore6::Order::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, Petstore6::Order::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Petstore6::Order::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
