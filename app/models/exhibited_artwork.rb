class ExhibitedArtwork < ApplicationRecord
    belongs_to :exhibition
    belongs_to :gallery_artwork 
end
