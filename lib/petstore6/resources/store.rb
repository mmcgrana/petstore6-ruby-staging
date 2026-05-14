# frozen_string_literal: true

module Petstore6
  module Resources
    # Access to Petstore orders
    class Store
      # Access to Petstore orders
      # @return [Petstore6::Resources::Store::Orders]
      attr_reader :orders

      # Returns a map of status codes to quantities
      #
      # @overload list_inventory(request_options: {})
      #
      # @param request_options [Petstore6::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Integer}]
      #
      # @see Petstore6::Models::StoreListInventoryParams
      def list_inventory(params = {})
        @client.request(
          method: :get,
          path: "store/inventory",
          model: Petstore6::Internal::Type::HashOf[Integer],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Petstore6::Client]
      def initialize(client:)
        @client = client
        @orders = Petstore6::Resources::Store::Orders.new(client: client)
      end
    end
  end
end
