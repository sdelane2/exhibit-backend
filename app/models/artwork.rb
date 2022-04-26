class Artwork < ApplicationRecord
    has_many :exhibited_artworks
    has_many :exhbitions through: :exhibited_artworks
end
