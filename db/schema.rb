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

ActiveRecord::Schema.define(version: 20140429211919) do

  create_table "tracks", force: true do |t|
    t.integer "track_id"
    t.string  "created_at"
    t.integer "user_id"
    t.integer "duration"
    t.boolean "commenatable"
    t.string  "state"
    t.string  "title"
    t.string  "permalink"
    t.boolean "streamable"
    t.boolean "downloadable"
    t.string  "track_type"
    t.string  "uri"
    t.string  "permalink_url"
    t.string  "stream_url"
    t.string  "artwork_url"
  end

  create_table "tracks_not_usable", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string  "name"
    t.string  "nickname"
    t.string  "image"
    t.string  "provider"
    t.integer "uid"
    t.string  "token"
  end

  add_index "users", ["uid"], name: "index_users_on_uid"

end
