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

ActiveRecord::Schema.define(version: 20160423051203) do

  create_table "covers", force: true do |t|
    t.integer  "offset_x"
    t.integer  "offset_y"
    t.string   "source"
    t.integer  "facebook_id"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "covers", ["event_id"], name: "index_covers_on_event_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "facebook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "cover_id"
  end

  add_index "events", ["cover_id"], name: "index_events_on_cover_id"

end
