# frozen_string_literal: true

module Petstore6
  module Models
    class Order < Petstore6::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute complete
      #
      #   @return [Boolean, nil]
      optional :complete, Petstore6::Internal::Type::Boolean

      # @!attribute pet_id
      #
      #   @return [Integer, nil]
      optional :pet_id, Integer, api_name: :petId

      # @!attribute quantity
      #
      #   @return [Integer, nil]
      optional :quantity, Integer

      # @!attribute ship_date
      #
      #   @return [Time, nil]
      optional :ship_date, Time, api_name: :shipDate

      # @!attribute status
      #   Order Status
      #
      #   @return [Symbol, Petstore6::Models::Order::Status, nil]
      optional :status, enum: -> { Petstore6::Order::Status }

      # @!method initialize(id: nil, complete: nil, pet_id: nil, quantity: nil, ship_date: nil, status: nil)
      #   @param id [Integer]
      #
      #   @param complete [Boolean]
      #
      #   @param pet_id [Integer]
      #
      #   @param quantity [Integer]
      #
      #   @param ship_date [Time]
      #
      #   @param status [Symbol, Petstore6::Models::Order::Status] Order Status

      # Order Status
      #
      # @see Petstore6::Models::Order#status
      module Status
        extend Petstore6::Internal::Type::Enum

        PLACED = :placed
        APPROVED = :approved
        DELIVERED = :delivered

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
