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

ActiveRecord::Schema.define(version: 2019_07_12_121812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grain_allocations", primary_key: "grain_allocation_id", id: :serial, force: :cascade do |t|
    t.integer "grain_id"
    t.integer "plotsubplot_id"
    t.string "year_observation", limit: 5, null: false
    t.float "percentage_85_dm_grain_y"
    t.decimal "percentage_85_dm_straw_y"
    t.decimal "spec_wt"
    t.decimal "tgw"
    t.decimal "tillers"
    t.decimal "grain_on_ear"
    t.decimal "length"
    t.decimal "percentage_crop_s"
    t.decimal "percentage_prg_s"
    t.decimal "percentage_rc_s"
    t.decimal "percentage_wc_s"
    t.decimal "percentage_tug_s"
    t.decimal "percentage_tw_s"
    t.decimal "percentage_prg_a"
    t.decimal "percentage_wc_a"
    t.decimal "percentage_rc_a"
    t.decimal "percentage_tug_a"
    t.decimal "percentage_tw_a"
    t.decimal "ph"
    t.decimal "p"
    t.decimal "k"
    t.decimal "mg"
    t.decimal "om"
    t.integer "replication"
    t.string "rotation", limit: 4
  end

  create_table "grains", primary_key: "grain_id", id: :serial, force: :cascade do |t|
    t.string "grain_type", limit: 70
  end

  create_table "grass_allocations", primary_key: "grass_allocation_id", id: :serial, force: :cascade do |t|
    t.integer "grass_id"
    t.integer "plotsubplot_id"
    t.string "year_observation", limit: 5, null: false
    t.decimal "percentage_100_dm_gm1"
    t.decimal "percentage_100_dm_gm2"
    t.decimal "percentage_100_dm_gm3"
    t.decimal "percentage_100_dm_gm4"
    t.decimal "percentage_100_dm_gm5"
    t.decimal "percentage_100_dm_gm6"
    t.decimal "percentage_100_dm_silage1"
    t.decimal "percentage_100_dm_silage2"
    t.decimal "d_value_1"
    t.decimal "d_value_2"
    t.decimal "me_1"
    t.decimal "me_2"
    t.decimal "lugd"
    t.decimal "percentage_prg_a"
    t.decimal "percentage_tim_a"
    t.decimal "percentage_wc_a"
    t.decimal "percentage_tug_a"
    t.decimal "percentage_tw_a"
    t.decimal "ph"
    t.decimal "p"
    t.decimal "k"
    t.decimal "mg"
    t.decimal "om"
    t.integer "replication"
    t.string "rotation", limit: 4
  end

  create_table "grasses", primary_key: "grass_id", id: :serial, force: :cascade do |t|
    t.string "grass_type", limit: 50
  end

  create_table "plotsubplots", primary_key: "plotsubplot_id", id: :serial, force: :cascade do |t|
    t.integer "plot_id", null: false
    t.string "subplot_id"
  end

  create_table "tuberose_allocations", primary_key: "tuberose_allocation_id", id: :serial, force: :cascade do |t|
    t.integer "tuberose_id"
    t.integer "plotsubplot_id"
    t.string "year_observation", limit: 5, null: false
    t.decimal "swede_and_pots_fwt"
    t.decimal "percentage_root_dm"
    t.decimal "percentage_100_dm_swede_leaf_dm_y"
    t.decimal "percentage_crop_s"
    t.decimal "percentage_root_s"
    t.decimal "percentage_tug_s"
    t.decimal "percentage_tw_s"
    t.decimal "percentage_tug_a"
    t.decimal "percentage_tw_a"
    t.decimal "ph"
    t.decimal "p"
    t.decimal "k"
    t.decimal "mg"
    t.decimal "om"
    t.integer "replication"
    t.string "rotation", limit: 4
  end

  create_table "tuberoses", primary_key: "tuberose_id", id: :serial, force: :cascade do |t|
    t.string "tuberose_type", limit: 70
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "grain_allocations", "grains", primary_key: "grain_id", name: "grain_allocations_grain_id_fkey"
  add_foreign_key "grain_allocations", "plotsubplots", primary_key: "plotsubplot_id", name: "grain_allocations_plotsubplot_id_fkey"
  add_foreign_key "grass_allocations", "grasses", primary_key: "grass_id", name: "grass_allocations_grass_id_fkey"
  add_foreign_key "grass_allocations", "plotsubplots", primary_key: "plotsubplot_id", name: "grass_allocations_plotsubplot_id_fkey"
  add_foreign_key "tuberose_allocations", "plotsubplots", primary_key: "plotsubplot_id", name: "tuberose_allocations_plotsubplot_id_fkey"
  add_foreign_key "tuberose_allocations", "tuberoses", primary_key: "tuberose_id", name: "tuberose_allocations_tuberose_id_fkey"
end
