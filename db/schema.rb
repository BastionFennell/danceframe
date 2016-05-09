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

ActiveRecord::Schema.define(version: 20160509203659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "covers", force: true do |t|
    t.integer  "offset_x"
    t.integer  "offset_y"
    t.text     "source"
    t.integer  "facebook_id", limit: 8
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "covers", ["event_id"], name: "index_covers_on_event_id", using: :btree

  create_table "dance_frames", force: true do |t|
    t.integer  "PreEvent_id"
    t.integer  "Event_id"
    t.integer  "User_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dance_frames", ["Event_id"], name: "index_dance_frames_on_Event_id", using: :btree
  add_index "dance_frames", ["PreEvent_id"], name: "index_dance_frames_on_PreEvent_id", using: :btree
  add_index "dance_frames", ["User_id"], name: "index_dance_frames_on_User_id", using: :btree

  create_table "events", force: true do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "facebook_id", limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "cover_id"
  end

  add_index "events", ["cover_id"], name: "index_events_on_cover_id", using: :btree

  create_table "pre_events", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "danceframe_id"
  end

  add_index "pre_events", ["danceframe_id"], name: "index_pre_events_on_danceframe_id", using: :btree

  create_table "users", force: true do |t|
    t.text     "email",                  default: "", null: false
    t.text     "encrypted_password",     default: "", null: false
    t.text     "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.text     "current_sign_in_ip"
    t.text     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.text     "provider"
    t.text     "uid"
    t.text     "name"
    t.text     "image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
