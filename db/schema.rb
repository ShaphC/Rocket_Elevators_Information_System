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

ActiveRecord::Schema.define(version: 2021_02_16_155641) do

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

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name", limit: 35
    t.string "last_name", limit: 40
    t.string "email", limit: 250
    t.string "password", limit: 45
  end

end
