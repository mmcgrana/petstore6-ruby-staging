# frozen_string_literal: true

module Petstore6
  class Client < Petstore6::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :api_key

    # Everything about your Pets
    # @return [Petstore6::Resources::Pets]
    attr_reader :pets

    # Access to Petstore orders
    # @return [Petstore6::Resources::Store]
    attr_reader :store

    # Operations about user
    # @return [Petstore6::Resources::Users]
    attr_reader :users

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {"api_key" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["PETSTORE_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["PETSTORE6_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["PETSTORE_API_KEY"],
      base_url: ENV["PETSTORE6_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://petstore3.swagger.io/api/v3"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"PETSTORE_API_KEY\"")
      end

      headers = {}
      custom_headers_env = ENV["PETSTORE6_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @pets = Petstore6::Resources::Pets.new(client: self)
      @store = Petstore6::Resources::Store.new(client: self)
      @users = Petstore6::Resources::Users.new(client: self)
    end
  end
end
