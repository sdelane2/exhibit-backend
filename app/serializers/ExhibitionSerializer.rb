class ExhibitionSerializer < ActiveModel::Serializer
    attributes :id, :title, :gallery_id, :image, :exhibited_artworks, :gallery
    belongs_to :gallery
    has_many :exhibited_artworks
    has_many :gallery_artworks, through: :exhibited_artworks

    
    
    
end

