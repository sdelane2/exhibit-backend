class GalleryArtworkSerializer < ActiveModel::Serializer
    attributes :gallery_id, :id, :artist, :title, :medium, :description, :image_url
    belongs_to :gallery
    has_many :exhibited_artworks



end