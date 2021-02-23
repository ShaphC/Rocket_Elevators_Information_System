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

ActiveRecord::Schema.define(version: 2021_02_23_224800) do

  create_table "batteries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "BuildingId"
    t.string "Type", limit: 100
    t.string "Status"
    t.string "EmployeeId"
    t.date "Date_of_commissioning"
    t.date "Date_of_last_inspection"
    t.string "Certificate_of_Operations"
    t.string "Information", limit: 500
    t.string "Notes", limit: 500
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "BuildingId"
    t.string "Type"
    t.integer "Number_of_floors"
    t.string "Status"
    t.string "Information", limit: 500
    t.string "Notes", limit: 500
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "batterie_id"
    t.index ["batterie_id"], name: "index_columns_on_batterie_id"
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "ColumnId"
    t.string "Serial_number", limit: 100
    t.string "Model"
    t.string "Type"
    t.string "Status"
    t.date "Date_of_commissioning"
    t.date "Date_of_last_inspection"
    t.string "Certificate_of_inspection"
    t.string "Information", limit: 500
    t.string "Notes", limit: 500
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "column_id"
    t.index ["column_id"], name: "index_elevators_on_column_id"
  end

  create_table "test_tables", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "columns", "batteries", column: "batterie_id"
  add_foreign_key "elevators", "columns"
end
