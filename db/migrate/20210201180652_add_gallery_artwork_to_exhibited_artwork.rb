class AddGalleryArtworkToExhibitedArtwork < ActiveRecord::Migration[6.0]
  def change
    remove_column :exhibited_artworks, :artwork_id, :integer
    add_column :exhibited_artworks, :gallery_artwork_id, :integer
    remove_column :gallery_artworks, :objectid, :integer
    add_column :gallery_artworks, :object_id, :integer
  end
end
