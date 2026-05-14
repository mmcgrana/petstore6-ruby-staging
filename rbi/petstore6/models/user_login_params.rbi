# typed: strong

module Petstore6
  module Models
    class UserLoginParams < Petstore6::Internal::Type::BaseModel
      extend Petstore6::Internal::Type::RequestParameters::Converter
      include Petstore6::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Petstore6::UserLoginParams, Petstore6::Internal::AnyHash)
        end

      # The password for login in clear text
      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      # The user name for login
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      sig do
        params(
          password: String,
          username: String,
          request_options: Petstore6::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The password for login in clear text
        password: nil,
        # The user name for login
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            password: String,
            username: String,
            request_options: Petstore6::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
