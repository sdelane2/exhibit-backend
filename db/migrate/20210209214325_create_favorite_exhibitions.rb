class CreateFavoriteExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_exhibitions do |t|
      t.integer :exhibition_id
      t.integer :user_id

      t.timestamps
    end
  end
end
