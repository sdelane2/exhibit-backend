class ExhibitionSerializer < ActiveModel::Serializer
    attributes :id, :title, :user_id, :image, :exhibited_artworks, :description, :published
    belongs_to :user
    has_many :exhibited_artworks
    has_many :gallery_artworks, through: :exhibited_artworks
    has_many :favorite_exhibitions

    
    
    
end

