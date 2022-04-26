class RemoveGalleryArtworksFromExhibitedArtworks < ActiveRecord::Migration[6.0]
  def change
    remove_column :exhibited_artworks, :gallery_artwork_id, :integer
    remove_column :exhibited_artworks, :cover_image, :boolean
    add_column :exhibited_artworks, :artwork_id, :integer
    remove_column :exhibitions, :gallery_id, :integer
  end
end
