class FavoriteExhibitionSerializer < ActiveModel::Serializer
  attributes :id, :exhibition_id, :user_id, :exhibition, :image

  
end