# frozen_string_literal: true

require "net/http"
require "json"
require_relative "met/artwork"
require_relative "met/cli"
require_relative "met/version"

module Met
  class Error < StandardError; end

  def self.artwork(id)
    uri = URI("https://collectionapi.metmuseum.org/public/collection/v1/objects/#{id}")
    json = JSON.parse(Net::HTTP.get(uri))

    Artwork.new(
      id: json["objectID"],
      image: json["primaryImage"],
      preview: json["primaryImageSmall"],
      department: json["department"],
      name: json["objectName"],
      title: json["title"]
    )
  end
end
