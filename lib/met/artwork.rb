# frozen_string_literal: true

module Met
  class Artwork
    attr_reader :id, :image, :preview, :department, :name, :title

    def initialize(attributes)
      attributes.each do |key, value|
        next if String(value).empty?

        instance_variable_set "@#{key}", value
      end
    end
  end
end
