class ExhibitedArtwork < ApplicationRecord
    belongs_to :exhibition
    belongs_to :artwork
    has_many :favorite_artworks

    

end
