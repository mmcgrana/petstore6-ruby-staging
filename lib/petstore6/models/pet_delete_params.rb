# frozen_string_literal: true

module Petstore6
  module Models
    # @see Petstore6::Resources::Pets#delete
    class PetDeleteParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      # @!attribute pet_id
      #
      #   @return [Integer]
      required :pet_id, Integer

      # @!method initialize(pet_id:, request_options: {})
      #   @param pet_id [Integer]
      #   @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
