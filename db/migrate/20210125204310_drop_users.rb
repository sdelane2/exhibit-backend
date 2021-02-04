class DropUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :users 
    drop_table :favorite_artworks
  end
end
