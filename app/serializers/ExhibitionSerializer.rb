class ExhibitionSerializer < ActiveModel::Serializer
    attributes :id, :title, :image

    def image
        self.object.artworks.first.image_url
    end

    
end

