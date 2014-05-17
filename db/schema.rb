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

ActiveRecord::Schema.define(version: 20140517135915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stations", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label"
  end

  create_table "trips", force: true do |t|
    t.integer  "start_station_id"
    t.integer  "end_station_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "start_address"
    t.float    "start_lat"
    t.float    "start_long"
    t.string   "end_address"
    t.float    "end_lat"
    t.float    "end_long"
    t.float    "start_station_latitude"
    t.float    "start_station_longitude"
    t.float    "end_station_latitude"
    t.float    "end_station_longitude"
    t.string   "start_station_label"
    t.string   "end_station_label"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

end
