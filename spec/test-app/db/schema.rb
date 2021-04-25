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

ActiveRecord::Schema.define(version: 2016_03_22_223258) do
  create_table "companies", force: :cascade do |t|
    t.string "addr1"
    t.string "addr2"
    t.string "city"
    t.datetime "created_at", null: false
    t.string "name"
    t.string "phone"
    t.string "state"
    t.datetime "updated_at", null: false
    t.string "zip"
    t.index ["city"], name: "index_companies_on_city"
    t.index ["name"], name: "index_companies_on_name"
    t.index ["state"], name: "index_companies_on_state"
  end

  create_table "people", force: :cascade do |t|
    t.integer "age"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.datetime "updated_at", null: false
  end
end
