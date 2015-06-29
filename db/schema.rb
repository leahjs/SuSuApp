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

ActiveRecord::Schema.define(version: 20150628195858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "invitations", force: :cascade do |t|
    t.integer  "pool_id"
    t.integer  "guest_id"
    t.string   "confirmation_status", default: "pending"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "invitations", ["pool_id"], name: "index_invitations_on_pool_id", using: :btree

  create_table "pools", force: :cascade do |t|
    t.string   "name"
    t.integer  "pool_amount"
    t.integer  "life_raft"
    t.integer  "cycle"
    t.integer  "member_limit"
    t.string   "status",       default: "open"
    t.integer  "reciever_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "lifeguard_id"
    t.date     "start_date"
  end

  create_table "swimmers", force: :cascade do |t|
    t.integer  "pool_id"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.datetime "payday_date"
    t.boolean  "recieved",    default: false
    t.date     "paydate"
  end

  add_index "swimmers", ["pool_id"], name: "index_swimmers_on_pool_id", using: :btree
  add_index "swimmers", ["user_id"], name: "index_swimmers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "credibility",   default: 500
    t.string   "email"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "profile_photo"
    t.string   "stripeid"
  end

  add_foreign_key "invitations", "pools"
  add_foreign_key "swimmers", "pools"
  add_foreign_key "swimmers", "users"
end
