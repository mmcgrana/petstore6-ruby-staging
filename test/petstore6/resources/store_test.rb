# frozen_string_literal: true

require_relative "../test_helper"

class Petstore6::Test::Resources::StoreTest < Petstore6::Test::ResourceTest
  def test_list_inventory
    skip("Mock server tests are disabled")

    response = @petstore6.store.list_inventory

    assert_pattern do
      response => ^(Petstore6::Internal::Type::HashOf[Integer])
    end
  end
end
