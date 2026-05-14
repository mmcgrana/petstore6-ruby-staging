# frozen_string_literal: true

module Petstore6
  module Models
    # @see Petstore6::Resources::Pets#find_by_status
    class PetFindByStatusParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      # @!attribute status
      #   Status values that need to be considered for filter
      #
      #   @return [Symbol, Petstore6::Models::PetFindByStatusParams::Status, nil]
      optional :status, enum: -> { Petstore6::PetFindByStatusParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, Petstore6::Models::PetFindByStatusParams::Status] Status values that need to be considered for filter
      #
      #   @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}]

      # Status values that need to be considered for filter
      module Status
        extend Petstore6::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
