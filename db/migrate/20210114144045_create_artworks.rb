class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :artist
      t.string :title
      t.string :date
      t.string :medium
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end
