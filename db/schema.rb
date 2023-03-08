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

ActiveRecord::Schema[7.0].define(version: 2023_03_07_160311) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.float "width"
    t.float "length"
    t.string "exposure"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: ""
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.string "climate"
    t.string "exposure"
    t.integer "watering"
    t.text "plant_care"
    t.text "picture_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plants_gardens", force: :cascade do |t|
    t.integer "group"
    t.bigint "plant_id", null: false
    t.bigint "garden_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_id"], name: "index_plants_gardens_on_garden_id"
    t.index ["plant_id"], name: "index_plants_gardens_on_plant_id"
  end

  add_foreign_key "plants_gardens", "gardens"
  add_foreign_key "plants_gardens", "plants"
end
