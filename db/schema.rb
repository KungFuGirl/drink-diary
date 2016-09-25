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

ActiveRecord::Schema.define(version: 20160924001732) do

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

  create_table "flavors", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_flavors_on_country_id", using: :btree
  end

  create_table "flavors_sodas", id: false, force: :cascade do |t|
    t.integer "flavor_id"
    t.integer "soda_id"
    t.index ["flavor_id"], name: "index_flavors_sodas_on_flavor_id", using: :btree
    t.index ["soda_id"], name: "index_flavors_sodas_on_soda_id", using: :btree
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_sodas", id: false, force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "soda_id"
    t.index ["ingredient_id"], name: "index_ingredients_sodas_on_ingredient_id", using: :btree
    t.index ["soda_id"], name: "index_ingredients_sodas_on_soda_id", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "text_note"
    t.integer  "rating",            null: false
    t.date     "date"
    t.integer  "sweetness_rating"
    t.string   "purchase_location"
    t.integer  "price"
    t.string   "currency"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "soda_id"
    t.index ["soda_id"], name: "index_notes_on_soda_id", using: :btree
    t.index ["user_id"], name: "index_notes_on_user_id", using: :btree
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "photo_file_name",    null: false
    t.string   "photo_content_type", null: false
    t.integer  "photo_file_size",    null: false
    t.datetime "photo_updated_at",   null: false
    t.boolean  "is_private"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "soda_id"
    t.index ["soda_id"], name: "index_photos_on_soda_id", using: :btree
    t.index ["user_id"], name: "index_photos_on_user_id", using: :btree
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

  create_table "sodas", force: :cascade do |t|
    t.integer  "country_id"
    t.string   "name"
    t.string   "brand"
    t.string   "parent_company"
    t.string   "origin_data"
    t.boolean  "is_diet"
    t.boolean  "is_caffeinated"
    t.string   "color"
    t.integer  "creator_id"
    t.integer  "last_editor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["country_id"], name: "index_sodas_on_country_id", using: :btree
    t.index ["creator_id"], name: "index_sodas_on_creator_id", using: :btree
    t.index ["last_editor_id"], name: "index_sodas_on_last_editor_id", using: :btree
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
  add_foreign_key "flavors", "countries"
  add_foreign_key "flavors_sodas", "flavors"
  add_foreign_key "flavors_sodas", "sodas"
  add_foreign_key "ingredients_sodas", "ingredients"
  add_foreign_key "ingredients_sodas", "sodas"
  add_foreign_key "notes", "sodas"
  add_foreign_key "notes", "users"
  add_foreign_key "photos", "sodas"
  add_foreign_key "photos", "users"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "wines"
  add_foreign_key "sodas", "countries"
  add_foreign_key "sodas", "users", column: "creator_id"
  add_foreign_key "sodas", "users", column: "last_editor_id"
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
