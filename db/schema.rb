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

ActiveRecord::Schema.define(version: 20170126164619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "weather_readings", force: :cascade do |t|
    t.string   "station"
    t.date     "reading_date"
    t.string   "reading_type"
    t.integer  "reading_value"
    t.string   "measurement_flag"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "weather_stations", force: :cascade do |t|
    t.string   "station_code"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "elevation"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["station_code"], name: "index_weather_stations_on_station_code", using: :btree
  end

end
