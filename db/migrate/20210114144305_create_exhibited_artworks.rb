class CreateExhibitedArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibited_artworks do |t|
      t.integer :artwork_id
      t.integer :exhibition_id

      t.timestamps
    end
  end
end
