class User < ApplicationRecord
  has_many :favorite_exhibitions
  has_many :favorite_artworks
  has_many :exhibitions
  has_many :exhibited_artworks, through: :exhibitions
  has_secure_password
  
  
end
