class AddArtistToGalleryArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :gallery_artworks, :artist, :string
  end
end
