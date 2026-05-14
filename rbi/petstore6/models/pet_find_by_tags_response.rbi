# typed: strong

module Petstore6
  module Models
    PetFindByTagsResponse =
      T.let(
        Petstore6::Internal::Type::ArrayOf[Petstore6::Pet],
        Petstore6::Internal::Type::Converter
      )
  end
end
