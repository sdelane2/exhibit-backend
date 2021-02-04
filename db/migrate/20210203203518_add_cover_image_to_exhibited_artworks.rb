class AddCoverImageToExhibitedArtworks < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibited_artworks, :cover_image, :boolean

  end
end
