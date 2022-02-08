class DropGalleries < ActiveRecord::Migration[6.0]
  def change
    table_exists?(:galleries) ? drop_table(:galleries) : nil
    table_exists?(:exhibitions) ? add_column(:exhibitions, :user_id, :integer) : nil
    table_exists?(:gallery_artworks) ? add_column(:gallery_artworks, :user_id, :integer) : nil
  end
end
