class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :medium, :artist, :title, :year, :image_url, :description, :object_id
end
