# frozen_string_literal: true

require_relative "../test_helper"

class Petstore6::Test::Resources::UsersTest < Petstore6::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @petstore6.users.create

    assert_pattern do
      response => Petstore6::User
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @petstore6.users.retrieve("username")

    assert_pattern do
      response => Petstore6::User
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @petstore6.users.update("username")

    assert_pattern do
      response => nil
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @petstore6.users.delete("username")

    assert_pattern do
      response => nil
    end
  end

  def test_create_with_list
    skip("Mock server tests are disabled")

    response = @petstore6.users.create_with_list

    assert_pattern do
      response => Petstore6::User
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_login
    skip("Mock server tests are disabled")

    response = @petstore6.users.login

    assert_pattern do
      response => String
    end
  end

  def test_logout
    skip("Mock server tests are disabled")

    response = @petstore6.users.logout

    assert_pattern do
      response => nil
    end
  end
end
