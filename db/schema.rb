# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_03_105114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "divesites", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "service"
    t.text "discription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "location_id"
    t.float "latitude"
    t.float "longitude"
    t.index ["location_id"], name: "index_divesites_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "area"
    t.integer "zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "divepoint"
    t.string "status"
    t.integer "temp"
    t.integer "visibility"
    t.text "content"
    t.text "image"
    t.text "video"
    t.bigint "user_id"
    t.bigint "divesite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["divesite_id"], name: "index_posts_on_divesite_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "provider", default: "", null: false
    t.string "uid", default: "", null: false
    t.string "name", default: "", null: false
    t.text "avatar"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "divesites", "locations"
  add_foreign_key "posts", "divesites"
  add_foreign_key "posts", "users"
end
