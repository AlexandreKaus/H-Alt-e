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

ActiveRecord::Schema.define(version: 2019_12_04_134457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternatives", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "ingredients"
    t.float "difficulty"
    t.time "prep_time"
    t.boolean "diy", default: true
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_alternatives_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "photo"
    t.bigint "alternative_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alternative_id"], name: "index_photos_on_alternative_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comment"
    t.bigint "alternative_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alternative_id"], name: "index_reviews_on_alternative_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "upvotes", force: :cascade do |t|
    t.bigint "alternative_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "downvote", default: false, null: false
    t.index ["alternative_id"], name: "index_upvotes_on_alternative_id"
    t.index ["user_id"], name: "index_upvotes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alternatives", "users"
  add_foreign_key "photos", "alternatives"
  add_foreign_key "reviews", "alternatives"
  add_foreign_key "reviews", "users"
  add_foreign_key "upvotes", "alternatives"
  add_foreign_key "upvotes", "users"
end
