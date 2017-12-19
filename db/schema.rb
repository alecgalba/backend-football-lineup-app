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

ActiveRecord::Schema.define(version: 20171219023348) do

  create_table "competitions", force: :cascade do |t|
    t.string "country_id"
    t.string "country_name"
    t.string "league_id"
    t.string "league_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "country_id"
    t.string "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "match_id"
    t.string "country_id"
    t.string "country_name"
    t.string "league_id"
    t.string "league_name"
    t.string "match_date"
    t.string "match_status"
    t.string "match_time"
    t.string "match_hometeam_name"
    t.string "match_hometeam_score"
    t.string "match_awayteam_name"
    t.string "match_awayteam_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_competitions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "competition_id"
    t.boolean "watched"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_countries", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id"
  end

  create_table "user_events", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.boolean "watched"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "competitions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
