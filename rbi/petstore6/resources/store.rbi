# typed: strong

module Petstore6
  module Resources
    # Access to Petstore orders
    class Store
      # Access to Petstore orders
      sig { returns(Petstore6::Resources::Store::Orders) }
      attr_reader :orders

      # Returns a map of status codes to quantities
      sig do
        params(request_options: Petstore6::RequestOptions::OrHash).returns(
          T::Hash[Symbol, Integer]
        )
      end
      def list_inventory(request_options: {})
      end

      # @api private
      sig { params(client: Petstore6::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
