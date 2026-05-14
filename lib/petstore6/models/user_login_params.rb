# frozen_string_literal: true

module Petstore6
  module Models
    # @see Petstore6::Resources::Users#login
    class UserLoginParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      # @!attribute password
      #   The password for login in clear text
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute username
      #   The user name for login
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(password: nil, username: nil, request_options: {})
      #   @param password [String] The password for login in clear text
      #
      #   @param username [String] The user name for login
      #
      #   @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
