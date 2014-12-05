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

ActiveRecord::Schema.define(version: 20141205162625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "championships", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "participants_count"
    t.string   "name"
  end

  create_table "matches", force: true do |t|
    t.integer  "team_1_score"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_1_id"
    t.integer  "team_2_id"
    t.integer  "championship_id"
    t.integer  "team_2_score"
    t.integer  "position"
  end

  add_index "matches", ["championship_id"], name: "index_matches_on_championship_id", using: :btree
  add_index "matches", ["team_1_id"], name: "index_matches_on_team_1_id", using: :btree
  add_index "matches", ["team_2_id"], name: "index_matches_on_team_2_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_1_id"
    t.integer  "user_2_id"
  end

  add_index "teams", ["user_1_id"], name: "index_teams_on_user_1_id", using: :btree
  add_index "teams", ["user_2_id"], name: "index_teams_on_user_2_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
