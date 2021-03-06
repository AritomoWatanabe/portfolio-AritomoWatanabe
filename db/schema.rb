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

ActiveRecord::Schema.define(version: 2020_08_15_065809) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "attendance_records", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "construction_site_id", null: false
    t.datetime "start_time", null: false
    t.datetime "finish_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "still_run", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "construction_sites", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "prime_contractor", null: false
    t.datetime "period", null: false
    t.string "caution", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "period_end"
    t.string "foremen"
    t.integer "process", default: 0
  end

  create_table "daily_reports", force: :cascade do |t|
    t.integer "construction_site_id", null: false
    t.string "content", null: false
    t.string "etcetera" #連絡事項など
    t.string "company_people", null: false #自社人工
    t.integer "care_people" #手元
    t.integer "scaffold_people" #鳶
    t.integer "interior_people" #内装
    t.integer "watchman" #警備員
    t.integer "garbage_collection_car" #ゴミ４t車
    t.integer "big_garbage_collection_car" #ゴミ大型車
    t.integer "concrete_car" #ガラ８t車
    t.integer "big_concrete_car" #ガラ大型車
    t.integer "soil_car" #埋め戻し大型車
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.integer "welder" #ガス工
    t.string "etcetera_people" #その他人工
  end

  create_table "machines", force: :cascade do |t|
    t.integer "construction_site_id", null: false
    t.string "name", null: false
    t.boolean "need_repair", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.integer "construction_site_id", null: false
    t.string "image_id", null: false
    t.string "explanation", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "content", null: false
    t.datetime "start_time", null: false
    t.datetime "finish_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "construction_site_id"
    t.integer "car_id"
  end

  create_table "upload_files", force: :cascade do |t|
    t.integer "construction_site_id", null: false
    t.string "name", null: false
    t.string "explanation", null: false
    t.string "file", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.string "family_name_kana", null: false
    t.string "first_name_kana", null: false
    t.string "address", null: false
    t.string "telephone_number", null: false
    t.boolean "is_withdrawal", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "weather_prefecture", default: 13
    t.string "wheather_prefecture", default: "東京都"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
