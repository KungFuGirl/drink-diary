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

ActiveRecord::Schema.define(version: 20160904221944) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appellations", force: :cascade do |t|
    t.string   "name",           null: false
    t.integer  "wine_region_id"
    t.integer  "state_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["state_id"], name: "index_appellations_on_state_id", using: :btree
    t.index ["wine_region_id"], name: "index_appellations_on_wine_region_id", using: :btree
  end

  create_table "appellations_blends", id: false, force: :cascade do |t|
    t.integer "appellation_id"
    t.integer "blend_id"
  end

  create_table "appellations_varietals", id: false, force: :cascade do |t|
    t.integer "appellation_id"
    t.integer "varietal_id"
  end

  create_table "blends", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blends_countries", id: false, force: :cascade do |t|
    t.integer "blend_id"
    t.integer "country_id"
  end

  create_table "blends_varietals", id: false, force: :cascade do |t|
    t.integer "blend_id"
    t.integer "varietal_id"
  end

  create_table "blends_wine_regions", id: false, force: :cascade do |t|
    t.integer "blend_id"
    t.integer "wine_region_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries_varietals", id: false, force: :cascade do |t|
    t.integer "country_id"
    t.integer "varietal_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "wine_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.date     "date"
    t.integer  "vintage"
    t.integer  "rating"
    t.integer  "price"
    t.string   "currency"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
    t.index ["wine_id"], name: "index_reviews_on_wine_id", using: :btree
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "varietals", force: :cascade do |t|
    t.string   "name",       null: false
    t.boolean  "is_black",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "varietals_wine_regions", id: false, force: :cascade do |t|
    t.integer "varietal_id"
    t.integer "wine_region_id"
  end

  create_table "wine_regions", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "state_id"
    t.index ["country_id"], name: "index_wine_regions_on_country_id", using: :btree
    t.index ["state_id"], name: "index_wine_regions_on_state_id", using: :btree
  end

  create_table "wine_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string   "name",                null: false
    t.string   "producer"
    t.integer  "review_for_photo_id"
    t.integer  "country_id"
    t.integer  "wine_type_id"
    t.integer  "wine_region_id"
    t.integer  "state_id"
    t.integer  "appellation_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "blend_id"
    t.integer  "varietal_id"
    t.index ["appellation_id"], name: "index_wines_on_appellation_id", using: :btree
    t.index ["blend_id"], name: "index_wines_on_blend_id", using: :btree
    t.index ["country_id"], name: "index_wines_on_country_id", using: :btree
    t.index ["state_id"], name: "index_wines_on_state_id", using: :btree
    t.index ["varietal_id"], name: "index_wines_on_varietal_id", using: :btree
    t.index ["wine_region_id"], name: "index_wines_on_wine_region_id", using: :btree
    t.index ["wine_type_id"], name: "index_wines_on_wine_type_id", using: :btree
  end

  add_foreign_key "appellations", "states"
  add_foreign_key "appellations", "wine_regions"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "wines"
  add_foreign_key "states", "countries"
  add_foreign_key "wine_regions", "countries"
  add_foreign_key "wine_regions", "states"
  add_foreign_key "wines", "appellations"
  add_foreign_key "wines", "blends"
  add_foreign_key "wines", "countries"
  add_foreign_key "wines", "states"
  add_foreign_key "wines", "varietals"
  add_foreign_key "wines", "wine_regions"
  add_foreign_key "wines", "wine_types"
end
