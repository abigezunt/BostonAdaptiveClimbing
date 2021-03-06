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

ActiveRecord::Schema.define(version: 20131102223600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_registrations", force: true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.boolean  "paid"
    t.string   "role"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_registrations", ["event_id"], name: "index_event_registrations_on_event_id", using: :btree
  add_index "event_registrations", ["user_id"], name: "index_event_registrations_on_user_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "name",        default: "Adaptive Climbing Session"
    t.text     "description", default: "Bi-Weekly Boston Adaptive Climbing for people with physical disabilities. Day passes are half price for anyone registering under our group ($11). If you are a person with a physical disability interested in climbing, or a volunteer looking to share the experience, then sign up here! Please respect the time of our volunteers and call, email, or Facebook message to cancel if you are unable to attend after you register. Free day passes are available from time to time for those on a fixed budget. Email info@bostonadaptiveclimbing.com for availability."
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.integer  "age"
    t.text     "disabilities"
    t.text     "volunteer_info"
    t.string   "type_of_participant"
    t.boolean  "bkbs_member"
    t.boolean  "belay_certified"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_phone"
    t.boolean  "has_shoes"
    t.boolean  "has_harness"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                   default: "", null: false
    t.string   "encrypted_password",      default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
