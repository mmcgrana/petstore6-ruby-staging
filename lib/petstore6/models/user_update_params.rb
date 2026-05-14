# frozen_string_literal: true

module Petstore6
  module Models
    # @see Petstore6::Resources::Users#update
    class UserUpdateParams < Petstore6::Models::User
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      # @!attribute existing_username
      #
      #   @return [String]
      required :existing_username, String

      # @!method initialize(existing_username:, request_options: {})
      #   @param existing_username [String]
      #   @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
