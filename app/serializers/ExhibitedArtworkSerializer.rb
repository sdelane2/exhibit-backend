class ExhibitedArtworkSerializer < ActiveModel::Serializer
    attributes :gallery_artwork, :cover_image, :gallery_artwork_id, :exhibition_id, :id
    belongs_to :gallery_artwork
    belongs_to :exhibition

    
end