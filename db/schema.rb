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

ActiveRecord::Schema.define(version: 20160909171017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "author_id",  null: false
    t.integer  "trip_id",    null: false
    t.text     "body",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["author_id"], name: "index_comments_on_author_id", using: :btree
  add_index "comments", ["trip_id"], name: "index_comments_on_trip_id", using: :btree

  create_table "friend_taggings", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "friend_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "friend_taggings", ["friend_id"], name: "index_friend_taggings_on_friend_id", using: :btree
  add_index "friend_taggings", ["user_id", "friend_id"], name: "index_friend_taggings_on_user_id_and_friend_id", unique: true, using: :btree
  add_index "friend_taggings", ["user_id"], name: "index_friend_taggings_on_user_id", using: :btree

  create_table "routes", force: :cascade do |t|
    t.string   "name",                     null: false
    t.text     "description",              null: false
    t.integer  "author_id",                null: false
    t.float    "distance",                 null: false
    t.string   "coordinates", default: [], null: false, array: true
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "polyline",    default: "", null: false
  end

  add_index "routes", ["author_id"], name: "index_routes_on_author_id", using: :btree

  create_table "trips", force: :cascade do |t|
    t.string   "title",                    null: false
    t.integer  "author_id",                null: false
    t.integer  "route_id",                 null: false
    t.string   "start_date",               null: false
    t.string   "end_date",                 null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.float    "expenditure",              null: false
    t.text     "log",         default: "", null: false
  end

  add_index "trips", ["author_id"], name: "index_trips_on_author_id", using: :btree
  add_index "trips", ["route_id"], name: "index_trips_on_route_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                                                                                                                        null: false
    t.string   "password_digest",                                                                                                              null: false
    t.string   "session_token",                                                                                                                null: false
    t.string   "first_name",                                                                                                                   null: false
    t.string   "last_name",                                                                                                                    null: false
    t.string   "date_of_birth",                                                                                                                null: false
    t.string   "gender",                                                                                                                       null: false
    t.text     "bio"
    t.text     "hobbies"
    t.text     "kind_of_traveler"
    t.datetime "created_at",                                                                                                                   null: false
    t.datetime "updated_at",                                                                                                                   null: false
    t.string   "profile_picture",  default: "http://res.cloudinary.com/davinkim93/image/upload/c_scale,w_1800/v1472774509/default_iall0v.jpg", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
