# class GalleryArtwork < ApplicationRecord
#     belongs_to :user
#     has_many :exhibited_artworks

#     def self.unique
#         grouped = all.group_by{|model| model.object_id}
#         grouped.values.each do |duplicate|
#             if duplicate === nil 
#             else 
#                 first_one = duplicate.shift
#                 duplicate.each{|double| double.destroy}
#             end
#         end
    
#     end


# end
