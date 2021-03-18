class FavoriteArtworkSerializer < ActiveModel::Serializer
  attributes :id, :exhibited_artwork_id, :user_id, :exhibited_artwork, :gallery_artwork
end