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

ActiveRecord::Schema.define(version: 20170725182229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "minerals", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "image"
    t.string "crystal_system"
    t.text "color", default: [], array: true
    t.text "crystal_habit", default: [], array: true
    t.string "cleavage"
    t.integer "hardness"
    t.string "luster"
    t.string "streak"
    t.text "diaphaneity", default: [], array: true
    t.text "geo_location", default: [], array: true
    t.integer "rock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rocks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
