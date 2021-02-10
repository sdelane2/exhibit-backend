class User < ApplicationRecord
  has_many :favorite_exhibitions
  has_many :favorite_artworks

  has_secure_password
  
  
end
