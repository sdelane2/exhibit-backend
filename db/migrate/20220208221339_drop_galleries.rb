class DropGalleries < ActiveRecord::Migration[6.0]
  def change
    table_exists?(:galleries) ? drop_table(:galleries) : nil
    table_exists?(:exhibitions) ? remove_column(:gallery_id) : nil
    table_exists?(:exhibitions) ? add_column(:user_id) : nil
    table_exists?(:gallery_artworks) ? remove_column(:gallery_id) : nil
    table_exists?(:gallery_artworks) ? add_column(:user_id) : nil
  end
end
