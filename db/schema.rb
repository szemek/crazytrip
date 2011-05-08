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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110508084813) do

  create_table "media", :force => true do |t|
    t.binary   "data"
    t.integer  "medium_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "media", ["medium_category_id"], :name => "index_media_on_medium_category_id"

  create_table "medium_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medium_categories", ["name"], :name => "index_medium_categories_on_name"

  create_table "place_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "place_categories", ["name"], :name => "index_place_categories_on_name"

  create_table "place_categories_places", :id => false, :force => true do |t|
    t.integer "place_id"
    t.integer "place_category_id"
  end

  add_index "place_categories_places", ["place_category_id", "place_id"], :name => "index_place_categories_places_on_place_category_id_and_place_id"

  create_table "places", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "minutes"
    t.boolean  "public_request", :default => false
    t.integer  "point_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "places", ["point_id"], :name => "index_places_on_point_id"

  create_table "points", :force => true do |t|
    t.decimal  "x",          :precision => 10, :scale => 0
    t.decimal  "y",          :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trip_points", :force => true do |t|
    t.integer  "trip_id"
    t.integer  "point_id"
    t.datetime "date"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trip_points", ["trip_id", "point_id"], :name => "index_trip_points_on_trip_id_and_point_id"

  create_table "trips", :force => true do |t|
    t.string   "name"
    t.boolean  "public",      :default => false
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trips", ["user_id"], :name => "index_trips_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email"

  create_table "votes", :force => true do |t|
    t.string   "comment"
    t.integer  "rating"
    t.boolean  "favorite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
