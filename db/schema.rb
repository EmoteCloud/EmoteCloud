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

ActiveRecord::Schema.define(version: 20130401081152) do

  create_table "deviations", force: true do |t|
    t.integer  "artist_id",                    null: false
    t.integer  "deviation_id",                 null: false
    t.string   "image_url"
    t.integer  "height"
    t.integer  "width"
    t.boolean  "banned",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "deviations", ["artist_id"], name: "index_deviations_on_artist_id"
  add_index "deviations", ["deviation_id"], name: "index_deviations_on_deviation_id", unique: true

  create_table "emotes", force: true do |t|
    t.integer  "deviation_id",             null: false
    t.integer  "submitter_id"
    t.string   "name",                     null: false
    t.integer  "votes_up",     default: 0
    t.integer  "votes_down",   default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emotes", ["deviation_id"], name: "index_emotes_on_deviation_id"
  add_index "emotes", ["name", "deviation_id"], name: "index_emotes_on_name_and_deviation_id", unique: true
  add_index "emotes", ["name"], name: "index_emotes_on_name"
  add_index "emotes", ["submitter_id"], name: "index_emotes_on_submitter_id"

  create_table "users", force: true do |t|
    t.string   "username",     null: false
    t.string   "voting_token"
    t.string   "access_token"
    t.string   "reset_token"
    t.datetime "token_expiry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true
  add_index "users", ["voting_token"], name: "index_users_on_voting_token"

  create_table "votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "emote_id"
    t.integer  "vote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["emote_id", "vote"], name: "index_votes_on_emote_id_and_vote"
  add_index "votes", ["emote_id"], name: "index_votes_on_emote_id"
  add_index "votes", ["user_id", "emote_id"], name: "index_votes_on_user_id_and_emote_id"
  add_index "votes", ["user_id"], name: "index_votes_on_user_id"

end
