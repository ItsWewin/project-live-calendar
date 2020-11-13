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

ActiveRecord::Schema.define(version: 20201113092702) do

  create_table "arrangements", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "availabilities", force: :cascade do |t|
    t.integer  "partner_id",     limit: 8
    t.integer  "arrangement_id", limit: 8
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.integer "availability_id", limit: 8
    t.integer "pioneer_id",      limit: 8
    t.string  "partner_status",  limit: 255
    t.string  "pioneer_status",  limit: 255
  end

  add_index "meetings", ["availability_id"], name: "index_meetings_on_availability_id", unique: true, using: :btree
  add_index "meetings", ["pioneer_id"], name: "index_meetings_on_pioneer_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "phone",           limit: 255
    t.string   "role",            limit: 255
    t.string   "auth_code",       limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

end
