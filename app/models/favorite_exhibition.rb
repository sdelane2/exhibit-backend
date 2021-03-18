class FavoriteExhibition < ApplicationRecord
    belongs_to :user
    belongs_to :exhibition

    def image 
        self.exhibition.image
    end
end
