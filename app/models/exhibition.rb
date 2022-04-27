class Exhibition < ApplicationRecord
    has_many :exhibited_artworks
    has_many :artworks, through: :exhibited_artworks
    belongs_to :user
    has_many :favorite_exhibitions
    
end
