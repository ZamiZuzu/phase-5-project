# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_12_182720) do

  create_table "dislikes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "image_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_dislikes_on_image_id"
    t.index ["user_id"], name: "index_dislikes_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "image_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_favorites_on_image_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_images_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "image_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_likes_on_image_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "reactions", force: :cascade do |t|
    t.string "kind"
    t.integer "user_id"
    t.integer "image_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_reactions_on_image_id"
    t.index ["user_id"], name: "index_reactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
