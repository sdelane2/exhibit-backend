class Gallery < ApplicationRecord
    has_many :gallery_artworks
    has_many :exhibitions
    has_many :exhibited_artworks, through: :exhibitions
end
