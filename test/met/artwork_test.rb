# frozen_string_literal: true

require "test_helper"

module Met
  class ArtworkTest < Minitest::Test
    def setup
      @artwork = Met.artwork(1)
    end

    def test_that_artworks_have_an_id
      assert_kind_of Numeric, @artwork.id
    end

    def test_that_artworks_may_have_an_image
      artwork = Artwork.new(image: "https://www.pictures.com/example.jpg")

      assert_kind_of String, artwork.image
    end

    def test_that_artworks_may_not_have_an_image
      artwork = Artwork.new(image: "")

      assert_nil artwork.image
    end

    def test_that_artworks_may_have_a_preview_image
      artwork = Artwork.new(preview: "https://www.pictures.com/example.jpg")

      assert_kind_of String, artwork.preview
    end

    def test_that_artworks_may_not_have_a_preview_image
      artwork = Artwork.new(preview: "")

      assert_nil artwork.preview
    end

    def test_that_artworks_have_a_department
      assert_kind_of String, @artwork.department
    end

    def test_that_artworks_have_a_name
      assert_kind_of String, @artwork.name
    end

    def test_that_artworks_have_a_title
      assert_kind_of String, @artwork.title
    end
  end
end
