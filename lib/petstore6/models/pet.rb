# frozen_string_literal: true

module Petstore6
  module Models
    # @see Petstore6::Resources::Pets#create
    class Pet < Petstore6::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute photo_urls
      #
      #   @return [Array<String>]
      required :photo_urls, Petstore6::Internal::Type::ArrayOf[String], api_name: :photoUrls

      # @!attribute id
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute category
      #
      #   @return [Petstore6::Models::Category, nil]
      optional :category, -> { Petstore6::Category }

      # @!attribute status
      #   pet status in the store
      #
      #   @return [Symbol, Petstore6::Models::Pet::Status, nil]
      optional :status, enum: -> { Petstore6::Pet::Status }

      # @!attribute tags
      #
      #   @return [Array<Petstore6::Models::Tag>, nil]
      optional :tags, -> { Petstore6::Internal::Type::ArrayOf[Petstore6::Tag] }

      # @!method initialize(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil)
      #   @param name [String]
      #
      #   @param photo_urls [Array<String>]
      #
      #   @param id [Integer]
      #
      #   @param category [Petstore6::Models::Category]
      #
      #   @param status [Symbol, Petstore6::Models::Pet::Status] pet status in the store
      #
      #   @param tags [Array<Petstore6::Models::Tag>]

      # pet status in the store
      #
      # @see Petstore6::Models::Pet#status
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
