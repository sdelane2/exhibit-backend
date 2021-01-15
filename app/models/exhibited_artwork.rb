class ExhibitedArtwork < ApplicationRecord
    belongs_to :exhibition
    belongs_to :artwork 
end
