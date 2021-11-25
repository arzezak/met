# frozen_string_literal: true

module Met
  class Artwork
    attr_reader :id, :title

    def initialize(id:, title:)
      @id = id
      @title = title
    end
  end
end
