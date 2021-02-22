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

ActiveRecord::Schema.define(version: 2021_02_22_185318) do

  create_table "dim_customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "CreationDate"
    t.string "CompanyName"
    t.text "MainContactName"
    t.string "MainContactEmail"
    t.integer "NbElevators"
    t.string "CustomerCity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fact_contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "ContactId"
    t.date "CreationDate"
    t.string "CompanyName"
    t.string "Email"
    t.string "ProjectName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fact_elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "SerialNumber"
    t.date "DateOfCommissioning"
    t.integer "BuildingId"
    t.integer "CustomerId"
    t.string "BuildingCity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fact_quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "QuoteId"
    t.string "Creation"
    t.string "CompanyName"
    t.string "Email"
    t.integer "NbElevator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
