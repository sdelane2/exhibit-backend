class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :artist, :title, :medium, :year, :description, :image_url
  has_many :exhibited_artworks
end
