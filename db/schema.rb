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

ActiveRecord::Schema.define(version: 20170311212131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accommodations", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "description"
    t.datetime "checkin_datetime"
    t.datetime "checkout_datetime"
    t.decimal  "cost"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "type"
    t.string   "description"
    t.time     "time"
    t.decimal  "cost"
    t.integer  "photo_id"
    t.integer  "tripdate_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["photo_id"], name: "index_events_on_photo_id", using: :btree
    t.index ["tripdate_id"], name: "index_events_on_tripdate_id", using: :btree
  end

  create_table "flights", force: :cascade do |t|
    t.integer  "trip_id",          null: false
    t.datetime "takeoff_datetime"
    t.datetime "landing_datetime"
    t.string   "airline"
    t.string   "flight_number"
    t.string   "takeoff_airport"
    t.string   "landing_airport"
    t.decimal  "cost"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["trip_id"], name: "index_flights_on_trip_id", using: :btree
  end

  create_table "photos", force: :cascade do |t|
    t.string   "photo_link",  null: false
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rental_cars", force: :cascade do |t|
    t.integer  "trip_id",          null: false
    t.string   "rental_company"
    t.string   "pickup_location"
    t.string   "dropoff_location"
    t.datetime "pickup_datetime"
    t.datetime "dropoff_datetime"
    t.string   "make"
    t.string   "model"
    t.string   "year"
    t.decimal  "cost"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["trip_id"], name: "index_rental_cars_on_trip_id", using: :btree
  end

  create_table "trip_dates", force: :cascade do |t|
    t.string   "date_title"
    t.integer  "trip_id"
    t.integer  "accommodation_id"
    t.date     "date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["accommodation_id"], name: "index_trip_dates_on_accommodation_id", using: :btree
    t.index ["trip_id"], name: "index_trip_dates_on_trip_id", using: :btree
  end

  create_table "trips", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_trips_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.integer  "photo_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["photo_id"], name: "index_users_on_photo_id", using: :btree
  end

end
