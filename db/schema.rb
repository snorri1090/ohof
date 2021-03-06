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

ActiveRecord::Schema.define(version: 20170414221616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "sub_location"
    t.string   "category"
    t.boolean  "wifi"
    t.string   "wifi_detail"
    t.string   "wifi_password"
    t.string   "power"
    t.boolean  "food"
    t.boolean  "coffee"
    t.string   "food_detail"
    t.string   "comments"
    t.string   "conversation"
    t.string   "work_done"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.integer  "visit_id"
  end

  add_index "locations", ["name"], name: "index_locations_on_name", using: :btree
  add_index "locations", ["visit_id"], name: "index_locations_on_visit_id", using: :btree

  create_table "pages", force: true do |t|
    t.integer  "subject_id"
    t.string   "name"
    t.string   "permalink"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.integer  "page_id"
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",      default: false
    t.string   "content_type"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 50
    t.string   "email",                 default: "", null: false
    t.string   "password",   limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.string   "comments"
    t.string   "community"
    t.string   "work"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
    t.integer  "location_id"
    t.string   "time_spent",    limit: 50
    t.string   "time_of_visit"
  end

  add_index "visits", ["location_id"], name: "index_visits_on_location_id", using: :btree

end
