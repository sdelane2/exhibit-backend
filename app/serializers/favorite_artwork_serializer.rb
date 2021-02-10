class FavoriteArtworkSerializer < ActiveModel::Serializer
  attributes :id, :exhibited_artwork_id, :user_id
end
