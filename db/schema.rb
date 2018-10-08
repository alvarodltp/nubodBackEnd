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

ActiveRecord::Schema.define(version: 2018_10_08_231456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_sets", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "exercise_id"
    t.float "weight"
    t.float "reps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "muscle_group"
    t.string "target"
    t.string "category"
    t.string "instructions"
    t.string "equipment_needed"
    t.string "target_image"
    t.string "instruction_image"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "location"
    t.string "gender"
    t.string "email"
    t.float "weight"
    t.string "activity_level"
    t.float "body_fat"
    t.float "bmr"
    t.string "goal"
    t.integer "calories"
    t.integer "age"
    t.string "password_digest"
    t.integer "daily_protein"
    t.integer "daily_carbs"
    t.integer "daily_fats"
    t.float "height"
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.time "duration"
    t.float "total_weight_lifted"
    t.float "personal_record"
    t.string "name"
  end

end
