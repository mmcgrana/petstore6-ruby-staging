# frozen_string_literal: true

module Petstore6
  module Models
    # @see Petstore6::Resources::Users#create
    class UserCreateParams < Petstore6::Models::User
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
