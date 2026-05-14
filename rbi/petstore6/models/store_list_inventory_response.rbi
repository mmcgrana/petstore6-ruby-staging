# typed: strong

module Petstore6
  module Models
    StoreListInventoryResponse =
      T.let(
        Petstore6::Internal::Type::HashOf[Integer],
        Petstore6::Internal::Type::Converter
      )
  end
end
