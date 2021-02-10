class Exhibition < ApplicationRecord
    has_many :exhibited_artworks
    has_many :gallery_artworks, through: :exhibited_artworks
    belongs_to :gallery
    has_many :favorite_exhibitions
    def image
        self.exhibited_artworks.map do |artwork|
            if artwork.cover_image === true
                return artwork.gallery_artwork.image_url
            else
                return "https://www.gaithersburgdental.com/wp-content/uploads/2016/10/orionthemes-placeholder-image.png"
            end
        end
    end

end
