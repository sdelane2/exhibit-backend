# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_09_214412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exhibited_artworks", force: :cascade do |t|
    t.integer "exhibition_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gallery_artwork_id"
    t.boolean "cover_image"
  end

  create_table "exhibitions", force: :cascade do |t|
    t.integer "gallery_id"
    t.string "title"
    t.string "description"
    t.boolean "published"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorite_artworks", force: :cascade do |t|
    t.integer "exhibited_artwork_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorite_exhibitions", force: :cascade do |t|
    t.integer "exhibition_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "password_digest"
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.json "tokens"
  end

  create_table "galleries_roles", id: false, force: :cascade do |t|
    t.bigint "gallery_id"
    t.bigint "role_id"
    t.index ["gallery_id", "role_id"], name: "index_galleries_roles_on_gallery_id_and_role_id"
    t.index ["gallery_id"], name: "index_galleries_roles_on_gallery_id"
    t.index ["role_id"], name: "index_galleries_roles_on_role_id"
  end

  create_table "gallery_artworks", force: :cascade do |t|
    t.integer "gallery_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "date"
    t.string "medium"
    t.string "description"
    t.string "image_url"
    t.string "artist"
    t.integer "object_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
