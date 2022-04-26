class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :medium
      t.string :artist
      t.string :title
      t.string :year
      t.string :image_url
      t.text :description
      t.integer :object_id

      t.timestamps
    end
  end
end
