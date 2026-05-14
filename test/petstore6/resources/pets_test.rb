# frozen_string_literal: true

require_relative "../test_helper"

class Petstore6::Test::Resources::PetsTest < Petstore6::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @petstore6.pets.create(name: "doggie", photo_urls: ["string"])

    assert_pattern do
      response => Petstore6::Pet
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(Petstore6::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: Petstore6::Category | nil,
        status: Petstore6::Pet::Status | nil,
        tags: ^(Petstore6::Internal::Type::ArrayOf[Petstore6::Tag]) | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @petstore6.pets.retrieve(0)

    assert_pattern do
      response => Petstore6::Pet
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(Petstore6::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: Petstore6::Category | nil,
        status: Petstore6::Pet::Status | nil,
        tags: ^(Petstore6::Internal::Type::ArrayOf[Petstore6::Tag]) | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @petstore6.pets.update(name: "doggie", photo_urls: ["string"])

    assert_pattern do
      response => Petstore6::Pet
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(Petstore6::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: Petstore6::Category | nil,
        status: Petstore6::Pet::Status | nil,
        tags: ^(Petstore6::Internal::Type::ArrayOf[Petstore6::Tag]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @petstore6.pets.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_find_by_status
    skip("Mock server tests are disabled")

    response = @petstore6.pets.find_by_status

    assert_pattern do
      response => ^(Petstore6::Internal::Type::ArrayOf[Petstore6::Pet])
    end
  end

  def test_find_by_tags
    skip("Mock server tests are disabled")

    response = @petstore6.pets.find_by_tags

    assert_pattern do
      response => ^(Petstore6::Internal::Type::ArrayOf[Petstore6::Pet])
    end
  end

  def test_update_by_id
    skip("Mock server tests are disabled")

    response = @petstore6.pets.update_by_id(0)

    assert_pattern do
      response => nil
    end
  end

  def test_upload_image_required_params
    skip("Mock server tests are disabled")

    response = @petstore6.pets.upload_image(0, image: StringIO.new("Example data"))

    assert_pattern do
      response => Petstore6::Models::PetUploadImageResponse
    end

    assert_pattern do
      response => {
        code: Integer | nil,
        message: String | nil,
        type: String | nil
      }
    end
  end
end
