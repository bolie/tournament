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

ActiveRecord::Schema.define(version: 20140314191226) do

  create_table "assigns", force: true do |t|
    t.integer  "player_id"
    t.integer  "pool_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assigns", ["player_id"], name: "index_assigns_on_player_id"
  add_index "assigns", ["pool_id"], name: "index_assigns_on_pool_id"

  create_table "characters", force: true do |t|
    t.string "name"
    t.string "character"
    t.text   "image_url", limit: 255
  end

  create_table "comments", force: true do |t|
    t.integer  "post_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "events", force: true do |t|
    t.string "event"
    t.string "game"
    t.text   "image", limit: 255
    t.text   "rules", limit: 255
  end

  create_table "features", force: true do |t|
    t.integer  "tournament_id"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "features", ["character_id"], name: "index_features_on_character_id"
  add_index "features", ["tournament_id"], name: "index_features_on_tournament_id"

  create_table "games", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "rules",      limit: 255
    t.text     "image",      limit: 255
  end

  create_table "players", force: true do |t|
    t.integer "registration_id"
    t.integer "user_id"
  end

  add_index "players", ["registration_id"], name: "index_players_on_registration_id"
  add_index "players", ["user_id"], name: "index_players_on_user_id"

  create_table "pools", force: true do |t|
    t.integer "game_id"
    t.integer "player_id"
  end

  add_index "pools", ["game_id"], name: "index_pools_on_game_id"
  add_index "pools", ["player_id"], name: "index_pools_on_player_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.string   "name"
    t.string   "gamertag"
    t.string   "address"
    t.string   "game_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registrations", ["game_id"], name: "index_registrations_on_game_id"
  add_index "registrations", ["user_id"], name: "index_registrations_on_user_id"

  create_table "tournaments", force: true do |t|
    t.integer "registration_id"
    t.integer "game_id"
    t.integer "player_id"
    t.integer "user_id"
  end

  add_index "tournaments", ["game_id"], name: "index_tournaments_on_game_id"
  add_index "tournaments", ["player_id"], name: "index_tournaments_on_player_id"
  add_index "tournaments", ["registration_id"], name: "index_tournaments_on_registration_id"
  add_index "tournaments", ["user_id"], name: "index_tournaments_on_user_id"

  create_table "tourney_entries", force: true do |t|
    t.integer  "tournament_id"
    t.integer  "player_id"
    t.integer  "pool_id"
    t.integer  "registration_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "tourney_entries", ["player_id"], name: "index_tourney_entries_on_player_id"
  add_index "tourney_entries", ["pool_id"], name: "index_tourney_entries_on_pool_id"
  add_index "tourney_entries", ["registration_id"], name: "index_tourney_entries_on_registration_id"
  add_index "tourney_entries", ["tournament_id"], name: "index_tourney_entries_on_tournament_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
