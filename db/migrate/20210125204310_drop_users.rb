class DropUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table (:users, if_exists: true)
    drop_table (:favorite_artworks, if_exists: true)
  end
end
