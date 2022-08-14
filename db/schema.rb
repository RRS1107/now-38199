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

ActiveRecord::Schema.define(version: 2022_07_29_142155) do

  create_table "homes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "packages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "delivery_date", null: false
    t.date "pickup_date", null: false
    t.string "invoice_number", null: false
    t.integer "preferred_time_id", null: false
    t.integer "delivery_area_id", null: false
    t.integer "collection_area_id", null: false
    t.integer "unit", null: false
    t.bigint "staff_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["staff_id"], name: "index_packages_on_staff_id"
  end

  create_table "records", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "staff_id"
    t.bigint "package_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["package_id"], name: "index_records_on_package_id"
    t.index ["staff_id"], name: "index_records_on_staff_id"
  end

  create_table "staffs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "staff_code", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true
    t.index ["staff_code"], name: "index_staffs_on_staff_code", unique: true
  end

  add_foreign_key "packages", "staffs"
  add_foreign_key "records", "packages"
  add_foreign_key "records", "staffs"
end
