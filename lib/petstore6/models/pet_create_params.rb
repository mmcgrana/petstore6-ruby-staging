# frozen_string_literal: true

module Petstore6
  module Models
    # @see Petstore6::Resources::Pets#create
    class PetCreateParams < Petstore6::Models::Pet
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
