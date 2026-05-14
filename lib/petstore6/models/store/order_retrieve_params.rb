# frozen_string_literal: true

module Petstore6
  module Models
    module Store
      # @see Petstore6::Resources::Store::Orders#retrieve
      class OrderRetrieveParams < Petstore6::Internal::Type::BaseModel
        extend Petstore6::Internal::Type::RequestParameters::Converter
        include Petstore6::Internal::Type::RequestParameters

        # @!attribute order_id
        #
        #   @return [Integer]
        required :order_id, Integer

        # @!method initialize(order_id:, request_options: {})
        #   @param order_id [Integer]
        #   @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
