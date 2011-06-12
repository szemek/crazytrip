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

ActiveRecord::Schema.define(:version => 20110508231655) do

  create_table "photo_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photo_categories", ["name"], :name => "index_photo_categories_on_name"

  create_table "photos", :force => true do |t|
    t.binary   "data"
    t.integer  "photo_category_id"
    t.integer  "place_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["photo_category_id"], :name => "index_photos_on_photo_category_id"

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
    t.integer  "minutes",     :default => 0
    t.integer  "point_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "places", ["point_id"], :name => "index_places_on_point_id"
  add_index "places", ["user_id"], :name => "index_places_on_user_id"

  create_table "points", :force => true do |t|
    t.decimal  "x",          :precision => 15, :scale => 10, :default => 19.937611
    t.decimal  "y",          :precision => 15, :scale => 10, :default => 50.061933
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "points", ["x", "y"], :name => "index_points_on_x_and_y"

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
    t.boolean  "admin",         :default => false
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "votes", :force => true do |t|
    t.integer  "trip_id"
    t.integer  "user_id"
    t.integer  "rating"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["trip_id", "user_id"], :name => "index_votes_on_trip_id_and_user_id"

end
