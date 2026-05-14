# frozen_string_literal: true

module Petstore6
  module Models
    # @type [Petstore6::Internal::Type::Converter]
    PetFindByTagsResponse = Petstore6::Internal::Type::ArrayOf[-> { Petstore6::Pet }]
  end
end
