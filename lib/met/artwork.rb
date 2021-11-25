# frozen_string_literal: true

module Met
  class Artwork
    attr_reader :id, :department, :name, :title

    def initialize(attributes)
      attributes.each { |key, value| instance_variable_set("@#{key}", value) }
    end
  end
end
