class FavoriteArtwork < ApplicationRecord
    belongs_to :user
    belongs_to :exhibited_artwork
end
