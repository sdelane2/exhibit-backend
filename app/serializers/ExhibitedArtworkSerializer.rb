class ExhibitedArtworkSerializer < ActiveModel::Serializer
    attributes :artwork, :artwork_id, :exhibition_id, :id
    belongs_to :artwork
    belongs_to :exhibition

    
end