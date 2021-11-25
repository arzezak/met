# frozen_string_literal: true

require "test_helper"

class MetTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Met::VERSION
  end

  def test_that_it_returns_an_artwork
    assert_kind_of Met::Artwork, Met.artwork(123)
  end
end
