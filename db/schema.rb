# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_03_055106) do
  create_table "pitcher_box_scores", force: :cascade do |t|
    t.string "official_game_date"
    t.string "pitcher_name"
    t.string "pitcher_team"
    t.string "opposing_team"
    t.string "venue"
    t.string "at"
    t.float "innings_pitched"
    t.integer "batters_faced"
    t.integer "num_hits"
    t.integer "singles"
    t.integer "doubles"
    t.integer "triples"
    t.integer "home_runs"
    t.integer "strikeouts"
    t.integer "walks"
    t.integer "intent_walks"
    t.integer "hit_by_pitches"
    t.integer "wild_pitches"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pitcher_pitch_stats", force: :cascade do |t|
    t.string "pitcher_name"
    t.string "pitcher_team"
    t.string "pitch_type"
    t.integer "times_thrown"
    t.integer "strikes"
    t.integer "balls"
    t.integer "put_in_play"
    t.integer "to_righty"
    t.integer "to_lefty"
    t.integer "called_strikes"
    t.integer "swinging_strikes"
    t.integer "fouls"
    t.integer "balls_in_dirt"
    t.integer "in_play_out"
    t.integer "in_play_safe"
    t.integer "in_play_runs"
    t.integer "hit_by_pitches"
    t.float "avg_speed"
    t.float "avg_spin_rate"
    t.float "avg_hit_launch_speed"
    t.float "avg_hit_launch_angle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_pitcher_stats", force: :cascade do |t|
    t.string "pitcher_team"
    t.integer "num_pitchers"
    t.integer "batters_faced"
    t.integer "num_hits"
    t.integer "singles"
    t.integer "doubles"
    t.integer "triples"
    t.integer "home_runs"
    t.integer "strikeouts"
    t.integer "walks"
    t.integer "intent_walks"
    t.integer "hit_by_pitches"
    t.integer "wild_pitches"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
