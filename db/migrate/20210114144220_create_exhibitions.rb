class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      t.integer :gallery_id
      t.string :title
      t.string :description
      t.boolean :published

      t.timestamps
    end
  end
end
