class DropGalleryArtworks < ActiveRecord::Migration[6.0]
  def change
    drop_table :gallery_artworks do |t|
      t.integer "gallery_id"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.string "title"
      t.string "date"
      t.string "medium"
      t.string "description"
      t.string "image_url"
      t.string "artist"
      t.integer "object_id"
      t.integer "user_id"
    end
  end
end
