class Artwork < ApplicationRecord
    has_many :favorite_artworks
    has_many :gallery_artworks
    has_many :exhibited_artworks
end
