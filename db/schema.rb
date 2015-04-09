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

ActiveRecord::Schema.define(version: 20150110022840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banners", force: :cascade do |t|
    t.text     "image"
    t.text     "url"
    t.text     "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "text"
    t.text     "text_on_link"
  end

  create_table "blogs", force: :cascade do |t|
    t.text     "title"
    t.text     "body"
    t.text     "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "declares", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "proposition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "avatar"
    t.text     "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: :cascade do |t|
    t.text     "title"
    t.text     "body"
    t.text     "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "propositions", force: :cascade do |t|
    t.text     "text"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.text     "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "role"
    t.text     "city"
    t.text     "name"
  end

  create_table "videos", force: :cascade do |t|
    t.text     "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "title"
    t.text     "description"
    t.text     "project_type"
  end

end
