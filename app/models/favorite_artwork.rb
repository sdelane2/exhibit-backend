class FavoriteArtwork < ApplicationRecord
    belongs_to :user
    belongs_to :exhibited_artwork

    def gallery_artwork
        self.exhibited_artwork.gallery_artwork
    end
end
