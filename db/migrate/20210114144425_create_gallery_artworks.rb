class CreateGalleryArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :gallery_artworks do |t|
      t.integer :gallery_id
      t.integer :artwork_id

      t.timestamps
    end
  end
end
