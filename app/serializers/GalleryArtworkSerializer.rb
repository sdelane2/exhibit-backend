class GalleryArtworkSerializer < ActiveModel::Serializer
    attributes :user_id, :id, :artist, :title, :medium, :date, :description, :image_url
    belongs_to :gallery
    has_many :exhibited_artworks



end