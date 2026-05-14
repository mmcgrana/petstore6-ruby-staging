# frozen_string_literal: true

require_relative "../../test_helper"

class Petstore6::Test::Resources::Store::OrdersTest < Petstore6::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @petstore6.store.orders.create

    assert_pattern do
      response => Petstore6::Order
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: Petstore6::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: Petstore6::Order::Status | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @petstore6.store.orders.retrieve(0)

    assert_pattern do
      response => Petstore6::Order
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: Petstore6::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: Petstore6::Order::Status | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @petstore6.store.orders.delete(0)

    assert_pattern do
      response => nil
    end
  end
end
