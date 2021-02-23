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

ActiveRecord::Schema.define(version: 2021_02_23_224942) do

  create_table "batteries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
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

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
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

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
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

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "email"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "email", limit: 200
    t.string "phone", limit: 20
    t.string "bType"
    t.integer "numApart"
    t.integer "numFloor"
    t.integer "numBase"
    t.integer "numBusi"
    t.integer "numPark"
    t.integer "numCage"
    t.integer "occpFloor"
    t.integer "numHour"
    t.integer "numCorp"
    t.string "product"
    t.string "numElev"
    t.string "unitP"
    t.string "totalP"
    t.string "instalP"
    t.string "finalP"
  end

<<<<<<< HEAD
  create_table "tets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
=======
  create_table "tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
>>>>>>> fe3c84a4d328982de96aa40c694ebd57a7747fd5
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "columns", "batteries", column: "batterie_id"
  add_foreign_key "elevators", "columns"
  add_foreign_key "employees", "users"
end
