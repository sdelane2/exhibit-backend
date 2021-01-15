class Exhibition < ApplicationRecord
    has_many :exhibited_artworks
    has_many :artworks, through: :exhibited_artworks
    belongs_to :gallery

    
end
