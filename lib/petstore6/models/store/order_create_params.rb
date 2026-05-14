# frozen_string_literal: true

module Petstore6
  module Models
    module Store
      # @see Petstore6::Resources::Store::Orders#create
      class OrderCreateParams < Petstore6::Models::Order
        extend Petstore6::Internal::Type::RequestParameters::Converter
        include Petstore6::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
