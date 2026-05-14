# typed: strong

module Petstore6
  module Models
    class Tag < Petstore6::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Petstore6::Tag, Petstore6::Internal::AnyHash) }

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { params(id: Integer, name: String).returns(T.attached_class) }
      def self.new(id: nil, name: nil)
      end

      sig { override.returns({ id: Integer, name: String }) }
      def to_hash
      end
    end
  end
end
