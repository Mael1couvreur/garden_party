# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_26_102408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.boolean "done"
    t.bigint "plant_id", null: false
    t.bigint "task_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_activities_on_plant_id"
    t.index ["task_id"], name: "index_activities_on_task_id"
  end

  create_table "plant_informations", force: :cascade do |t|
    t.string "name"
    t.string "family"
    t.text "description"
    t.text "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "difficulty"
    t.string "sunlight"
    t.string "water"
    t.integer "min_room_temperature"
    t.integer "max_room_temperature"
    t.string "start_growth_month"
    t.string "end_growth_month"
  end

  create_table "plants", force: :cascade do |t|
    t.string "nickname"
    t.integer "like_number"
    t.bigint "user_id", null: false
    t.bigint "plant_information_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_information_id"], name: "index_plants_on_plant_information_id"
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "score"
    t.float "intervalle"
    t.string "category"
    t.bigint "plant_information_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_information_id"], name: "index_tasks_on_plant_information_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "address"
    t.integer "score"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activities", "plants"
  add_foreign_key "activities", "tasks"
  add_foreign_key "plants", "plant_informations"
  add_foreign_key "plants", "users"
  add_foreign_key "tasks", "plant_informations"
end
