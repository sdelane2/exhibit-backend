class GalleryArtwork < ApplicationRecord
    belongs_to :gallery
    has_many :exhibited_artworks

    def self.unique
        grouped = all.group_by{|model| model.object_id}
        grouped.values.each do |duplicate|
            first_one = duplicate.shift
            duplicate.each{|double| double.destroy}
        end
    
    end
end
