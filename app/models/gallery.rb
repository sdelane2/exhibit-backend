class Gallery < ApplicationRecord
    # DeviseTokenAuth::Concerns::Gallery

    has_many :gallery_artworks
    has_many :exhibitions
    has_many :exhibited_artworks, through: :exhibitions
    has_many :exhibited_artworks, through: :gallery_artworks
    has_secure_password
    
    # def image
    #     self.exhibitions.map do |exhibition|
    #         exhibition.artworks.map do |artwork|
    #             artwork.image_url
    #         end
    #     end
    # end


end
