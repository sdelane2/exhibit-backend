class DropUsers < ActiveRecord::Migration[6.0]
  def change
    table_exists?(:users) ? drop_table(:users) : nil
    table_exists?(:favorite_artworks) ? drop_table(:favorite_artworks) : nil
  end
end
