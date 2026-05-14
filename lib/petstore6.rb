# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "base64"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "openssl"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "petstore6/version"
require_relative "petstore6/internal/util"
require_relative "petstore6/internal/type/converter"
require_relative "petstore6/internal/type/unknown"
require_relative "petstore6/internal/type/boolean"
require_relative "petstore6/internal/type/file_input"
require_relative "petstore6/internal/type/enum"
require_relative "petstore6/internal/type/union"
require_relative "petstore6/internal/type/array_of"
require_relative "petstore6/internal/type/hash_of"
require_relative "petstore6/internal/type/base_model"
require_relative "petstore6/internal/type/base_page"
require_relative "petstore6/internal/type/request_parameters"
require_relative "petstore6/internal"
require_relative "petstore6/request_options"
require_relative "petstore6/file_part"
require_relative "petstore6/errors"
require_relative "petstore6/internal/transport/base_client"
require_relative "petstore6/internal/transport/pooled_net_requester"
require_relative "petstore6/client"
require_relative "petstore6/models/pet"
require_relative "petstore6/models/order"
require_relative "petstore6/models/user"
require_relative "petstore6/models/category"
require_relative "petstore6/models/pet_create_params"
require_relative "petstore6/models/pet_delete_params"
require_relative "petstore6/models/pet_find_by_status_params"
require_relative "petstore6/models/pet_find_by_status_response"
require_relative "petstore6/models/pet_find_by_tags_params"
require_relative "petstore6/models/pet_find_by_tags_response"
require_relative "petstore6/models/pet_retrieve_params"
require_relative "petstore6/models/pet_update_by_id_params"
require_relative "petstore6/models/pet_update_params"
require_relative "petstore6/models/pet_upload_image_params"
require_relative "petstore6/models/pet_upload_image_response"
require_relative "petstore6/models/store/order_create_params"
require_relative "petstore6/models/store/order_delete_params"
require_relative "petstore6/models/store/order_retrieve_params"
require_relative "petstore6/models/store_list_inventory_params"
require_relative "petstore6/models/store_list_inventory_response"
require_relative "petstore6/models/tag"
require_relative "petstore6/models/user_create_params"
require_relative "petstore6/models/user_create_with_list_params"
require_relative "petstore6/models/user_delete_params"
require_relative "petstore6/models/user_login_params"
require_relative "petstore6/models/user_login_response"
require_relative "petstore6/models/user_logout_params"
require_relative "petstore6/models/user_retrieve_params"
require_relative "petstore6/models/user_update_params"
require_relative "petstore6/models"
require_relative "petstore6/resources/pets"
require_relative "petstore6/resources/store"
require_relative "petstore6/resources/store/orders"
require_relative "petstore6/resources/users"
