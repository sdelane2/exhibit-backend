# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative '../.api_key.rb'
require 'rest-client'
require 'json'
require 'faker'
require 'pry'


Artwork.destroy_all
Exhibition.destroy_all
Gallery.destroy_all
ExhibitedArtwork.destroy_all


def get_artworks
    index_number = 0 
    artwork_array = []
    10.times do 
        all_artworks = RestClient.get("https://api.harvardartmuseums.org/object?apikey=#{$api_key}&q=divison%3AModern%20and%20Contemporary%20Art&imagecount=1&page=#{index_number}")
        index_number += 1
        artwork_hash = JSON.parse(all_artworks)

        artwork_hash["records"].each do |artwork|
            if artwork["images"] != [] && artwork["people"] != nil && artwork["imagecount"] > 0 && artwork["images"] != []
                work = Artwork.new 

                work["medium"] = artwork["technique"]
                work["artist"] = artwork["people"][0]["name"]
                work["description"] = artwork["description"]
                work["title"] = artwork["title"]
                work["date"] = artwork["dated"]
                work["image_url"] = "https://ids.lib.harvard.edu/ids/view/#{artwork["images"][0]["idsid"]}"
            
                work.save!
            end
        end
    end
end

get_artworks

Gallery.create(name: "Luhring Augustine")
Exhibition.create(gallery_id: Gallery.first.id, title: "Test", description: "the first show", published: true)
GalleryArtwork.create(gallery_id: Gallery.first.id, artwork_id: Artwork.first.id)
ExhibitedArtwork.create(exhibition_id: Exhibition.first.id, artwork_id: Artwork.first.id)
ExhibitedArtwork.create(exhibition_id: Exhibition.first.id, artwork_id: Artwork.last.id)   

