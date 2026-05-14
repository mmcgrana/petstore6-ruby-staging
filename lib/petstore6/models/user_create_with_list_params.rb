# frozen_string_literal: true

module Petstore6
  module Models
    # @see Petstore6::Resources::Users#create_with_list
    class UserCreateWithListParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      # @!attribute items
      #
      #   @return [Array<Petstore6::Models::User>, nil]
      optional :items, -> { Petstore6::Internal::Type::ArrayOf[Petstore6::User] }

      # @!method initialize(items: nil, request_options: {})
      #   @param items [Array<Petstore6::Models::User>]
      #   @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
