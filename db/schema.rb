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

ActiveRecord::Schema[7.0].define(version: 2023_06_20_135721) do
  create_table "categories", force: :cascade do |t|
    t.string "grocery"
    t.string "electronic"
    t.string "mobile"
    t.string "healthcare"
    t.string "toys"
    t.string "kitchen"
    t.string "fashion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "brand_name"
    t.string "description"
    t.integer "price"
    t.integer "quantity"
    t.boolean "status"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "categories_id"
    t.index ["categories_id"], name: "index_products_on_categories_id"
  end

  add_foreign_key "products", "categories", column: "categories_id"
end
