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

ActiveRecord::Schema.define(version: 20170109151118) do

  create_table "availabilities", force: :cascade do |t|
    t.date     "start_at"
    t.date     "finish_at"
    t.integer  "band_id"
    t.date     "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bands", force: :cascade do |t|
    t.string   "band_name"
    t.string   "rehearsal_address"
    t.string   "band_facebook"
    t.string   "band_price"
    t.integer  "genre_id"
    t.integer  "set_time"
    t.integer  "user_id"
    t.integer  "members_number"
    t.boolean  "transport"
    t.boolean  "band_avatar"
    t.boolean  "mersh"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "genres", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perf_makers", force: :cascade do |t|
    t.string   "equipment"
    t.string   "website"
    t.string   "association"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "performances", force: :cascade do |t|
    t.date     "perf_date"
    t.integer  "band_id"
    t.integer  "place_id"
    t.integer  "perf_price"
    t.string   "facebook_event"
    t.integer  "perf_maker_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "place_name"
    t.string   "city"
    t.string   "place_address"
    t.string   "type"
    t.string   "place_facebook"
    t.string   "payment"
    t.integer  "user_id"
    t.text     "place_description"
    t.integer  "capacity"
    t.integer  "genre_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "user_city"
    t.boolean  "user_avatar"
    t.integer  "perf_maker_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
