class ExhibitedArtworkSerializer < ActiveModel::Serializer
    attributes :gallery_artwork, :cover_image
    belongs_to :gallery_artwork
    belongs_to :exhibition

    
end