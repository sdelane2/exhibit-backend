class FavoriteExhibitionSerializer < ActiveModel::Serializer
  attributes :id, :exhibition_id, :user_id
end
