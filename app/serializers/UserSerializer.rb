class UserSerializer < ActiveModel::Serializer
    attributes :id,:username, :name, :exhibited_artworks
    has_many :exhibitions
    has_many :gallery_artworks
    
    

    

    
end
