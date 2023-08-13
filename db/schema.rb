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

ActiveRecord::Schema[7.0].define(version: 2023_08_12_162106) do
  create_table "coupons", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "food_id", null: false
    t.integer "status", default: 0
    t.string "token"
    t.integer "offer_amount"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_coupons_on_food_id"
    t.index ["token"], name: "index_coupons_on_token"
  end

  create_table "foods", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "name"
    t.text "image_url"
    t.integer "stock_quantity"
    t.integer "price"
    t.integer "category", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_foods_on_name"
  end

  create_table "orders", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.bigint "food_id", null: false
    t.integer "quantity"
    t.bigint "coupon_id"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coupon_id"], name: "index_orders_on_coupon_id"
    t.index ["food_id"], name: "index_orders_on_food_id"
  end

  add_foreign_key "coupons", "foods"
  add_foreign_key "orders", "coupons"
  add_foreign_key "orders", "foods"
end
