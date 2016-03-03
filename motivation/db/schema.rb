# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160303000743) do

  create_table "favorite_images", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "image_id"
    t.string   "url"
  end

  add_index "favorite_images", ["image_id"], name: "index_favorite_images_on_image_id"
  add_index "favorite_images", ["user_id"], name: "index_favorite_images_on_user_id"

  create_table "favorite_videos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "video_id"
    t.string   "url"
  end

  add_index "favorite_videos", ["user_id"], name: "index_favorite_videos_on_user_id"
  add_index "favorite_videos", ["video_id"], name: "index_favorite_videos_on_video_id"

  create_table "images", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "type"
    t.integer  "rating",     default: 10
  end

  create_table "unmotivational_images", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
    t.integer  "image_id"
  end

  create_table "unmotivational_videos", force: :cascade do |t|
    t.integer  "video_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
  end

  create_table "user_submitted_motivations", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "format"
    t.string   "url"
    t.string   "type_submitted"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
  end

  create_table "videos", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "type"
    t.string   "url"
    t.integer  "rating",     default: 10
  end

end
