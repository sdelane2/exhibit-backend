# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require_relative '../.api_key.rb'
require 'rest-client'
require 'json'
require 'faker'
require 'pry'

AWS::S3::Base.establish_connection!(
 :secret_access_key => ENV['api_key']
)


Exhibition.destroy_all
ExhibitedArtwork.destroy_all
GalleryArtwork.destroy_all
FavoriteArtwork.destroy_all
FavoriteExhibition.destroy_all


def get_artworks
    index_number = 0 
    artwork_array = []
    50.times do 
        all_artworks = RestClient.get("https://api.harvardartmuseums.org/object?apikey=#{secret_access_key}&q=divison%3AModern%20and%20Contemporary%20Art&imagecount=1&page=#{index_number}")
        index_number += 1
        artwork_hash = JSON.parse(all_artworks)

        artwork_hash["records"].each do |artwork|
            if artwork["images"] != [] && artwork["people"] != nil && artwork["imagecount"] > 0 && artwork["images"] != []
                work = GalleryArtwork.new 

                work["gallery_id"] = Gallery.all.sample.id
                work["medium"] = artwork["technique"]
                work["artist"] = artwork["people"][0]["name"]
                work["description"] = artwork["description"]
                work["title"] = artwork["title"]
                work["date"] = artwork["dated"]
                work["object_id"] = artwork["objectid"]
                work["image_url"] = "https://ids.lib.harvard.edu/ids/view/#{artwork["images"][0]["idsid"]}"
            
                work.save!
            end
        end
    end
end

get_artworks







# artworks = Artwork.all 

# def create_gallery_artworks(artworks)
#     artworks.each do |artwork|
#         GalleryArtwork.create(artwork_id: artwork.id, gallery_id: Gallery.all.sample.id)
#     end
# end

# create_gallery_artworks(artworks)

GalleryArtwork.unique

Exhibition.create(gallery_id: Gallery.first.id, title: "Prints and Editions", description: "For these artists, printmaking has provided fruitful grounds for experimentation in their varied practices. Their works collectively demonstrate the medium’s versatility through its many forms, ranging from intaglio to photogravure to silkscreen and monotype. While many feature printmaking prominently within their creative process, others engage with it more peripherally as a means of expanding their practice.", published: true)
Exhibition.create(gallery_id: Gallery.first.id, title: "Virtual Views", description: "Join us for virtual explorations with curators and much more. We’re bringing our galleries to you! ", published: true)
Exhibition.create(gallery_id: Gallery.last.id, title: "New Visions", description: "Collectively, the exhibition affirms the discipline’s capacity to foster new understandings of identity, put forth nuanced critiques of the world around us, and find power in play and vulnerability.", published: true)


ExhibitedArtwork.create(exhibition_id: Exhibition.third.id, gallery_artwork_id: GalleryArtwork.second.id, cover_image: true)





