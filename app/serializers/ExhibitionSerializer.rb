class ExhibitionSerializer < ActiveModel::Serializer
    attributes :id, :title, :user_id, :exhibited_artworks, :description, :published
    belongs_to :user
    has_many :exhibited_artworks
    has_many :artworks, through: :exhibited_artworks
    
    
    
end

