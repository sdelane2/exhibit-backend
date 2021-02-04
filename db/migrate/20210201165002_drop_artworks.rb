class DropArtworks < ActiveRecord::Migration[6.0]
  def change
    drop_table :artworks
    add_column :gallery_artworks, :title, :string
    add_column :gallery_artworks, :date, :string
    add_column :gallery_artworks, :medium, :string
    add_column :gallery_artworks, :description, :string
    add_column :gallery_artworks, :image_url, :string
    add_column :gallery_artworks, :objectid, :integer
    remove_column :gallery_artworks, :artwork_id, :integer
  end
end
