class DropGalleriesRoles < ActiveRecord::Migration[6.0]
  def change
    drop_table :galleries_roles do |t|
      t.bigint "gallery_id"
      t.bigint "role_id"
      t.index ["gallery_id", "role_id"], name: "index_galleries_roles_on_gallery_id_and_role_id"
      t.index ["gallery_id"], name: "index_galleries_roles_on_gallery_id"
      t.index ["role_id"], name: "index_galleries_roles_on_role_id"
    end
  end
end
