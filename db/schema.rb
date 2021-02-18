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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_02_18_154450) do
=======
ActiveRecord::Schema.define(version: 2021_02_18_135458) do
>>>>>>> main

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "email"
    t.bigint "user_id"
  end

<<<<<<< HEAD
=======
  create_table "quote", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "building_type"
    t.integer "nb_app_building"
    t.integer "nb_floors_building"
    t.integer "nb_dist_businesses"
    t.integer "nb_park_spaces"
    t.integer "nb_cages_deployed"
    t.integer "nb_separate_tenant_companies"
    t.integer "nb_occup_floor"
    t.string "product"
  end

>>>>>>> main
  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "building_type"
    t.integer "nb_app_building"
    t.integer "nb_floors_building"
    t.integer "nb_dist_businesses"
    t.integer "nb_park_spaces"
    t.integer "nb_cages_deployed"
    t.integer "nb_separate_tenant_companies"
    t.integer "nb_occup_floor"
    t.string "product"
  end

<<<<<<< HEAD
=======
  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
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

>>>>>>> main
end
