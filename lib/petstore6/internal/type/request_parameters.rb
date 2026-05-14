# frozen_string_literal: true

module Petstore6
  module Internal
    module Type
      # @api private
      module RequestParameters
        # @!attribute request_options
        # Options to specify HTTP behaviour for this request.
        #
        #   @return [Petstore6::RequestOptions, Hash{Symbol=>Object}]

        # @param mod [Module]
        def self.included(mod)
          raise ArgumentError.new(mod) unless mod <= Petstore6::Internal::Type::BaseModel

          mod.optional(:request_options, Petstore6::RequestOptions)
        end

        # @api private
        module Converter
          # @api private
          #
          # @param params [Object]
          #
          # @return [Array(Object, Hash{Symbol=>Object})]
          def dump_request(params)
            state = {can_retry: true}
            case (dumped = dump(params, state: state))
            in Hash
              options = Petstore6::Internal::Util.coerce_hash!(dumped[:request_options]).to_h
              request_options = state.fetch(:can_retry) ? options : {**options, max_retries: 0}
              [dumped.except(:request_options), request_options]
            else
              [dumped, nil]
            end
          end
        end
      end
    end
  end
end
