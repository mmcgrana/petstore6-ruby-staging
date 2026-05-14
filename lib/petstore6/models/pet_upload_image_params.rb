# frozen_string_literal: true

module Petstore6
  module Models
    # @see Petstore6::Resources::Pets#upload_image
    class PetUploadImageParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      # @!attribute pet_id
      #
      #   @return [Integer]
      required :pet_id, Integer

      # @!attribute image
      #
      #   @return [Pathname, StringIO, IO, String, Petstore6::FilePart]
      required :image, Petstore6::Internal::Type::FileInput

      # @!attribute additional_metadata
      #   Additional Metadata
      #
      #   @return [String, nil]
      optional :additional_metadata, String

      # @!method initialize(pet_id:, image:, additional_metadata: nil, request_options: {})
      #   @param pet_id [Integer]
      #
      #   @param image [Pathname, StringIO, IO, String, Petstore6::FilePart]
      #
      #   @param additional_metadata [String] Additional Metadata
      #
      #   @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
