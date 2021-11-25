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

    def test_that_artworks_have_a_title
      assert_kind_of String, @artwork.title
    end
  end
end
