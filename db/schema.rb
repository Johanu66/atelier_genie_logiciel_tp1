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

ActiveRecord::Schema.define(version: 2021_12_22_092652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.bigint "room_id"
    t.bigint "hourly_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hourly_id"], name: "index_availabilities_on_hourly_id"
    t.index ["room_id"], name: "index_availabilities_on_room_id"
  end

  create_table "hourlies", force: :cascade do |t|
    t.string "day"
    t.string "time_slot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "room_id"
    t.bigint "hourly_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hourly_id"], name: "index_reservations_on_hourly_id"
    t.index ["room_id"], name: "index_reservations_on_room_id"
    t.index ["teacher_id"], name: "index_reservations_on_teacher_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "speciality"
    t.string "degree"
    t.boolean "responsable", default: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "tel", default: ""
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "availabilities", "hourlies"
  add_foreign_key "availabilities", "rooms"
  add_foreign_key "reservations", "hourlies"
  add_foreign_key "reservations", "rooms"
  add_foreign_key "reservations", "teachers"
  add_foreign_key "teachers", "users"
end
