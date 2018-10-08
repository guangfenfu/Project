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

ActiveRecord::Schema.define(version: 2018_10_08_005622) do

  create_table "address_users", id: false, force: :cascade do |t|
    t.integer "address_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_address_users_on_address_id"
    t.index ["user_id"], name: "index_address_users_on_user_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "receiver"
    t.integer "province_id"
    t.text "address_detail"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["province_id"], name: "index_addresses_on_province_id"
  end

  create_table "addresses_users", id: false, force: :cascade do |t|
    t.integer "address_id"
    t.integer "user_id"
    t.index ["address_id"], name: "index_addresses_users_on_address_id"
    t.index ["user_id"], name: "index_addresses_users_on_user_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "hex_value"
    t.string "colour_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.string "sign"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_colors", force: :cascade do |t|
    t.integer "product_id"
    t.integer "color_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_product_colors_on_color_id"
    t.index ["product_id"], name: "index_product_colors_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "brand_id"
    t.string "name"
    t.decimal "price"
    t.string "image_link"
    t.decimal "rating"
    t.integer "category_id"
    t.integer "color_id"
    t.text "description"
    t.integer "currency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["color_id"], name: "index_products_on_color_id"
    t.index ["currency_id"], name: "index_products_on_currency_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.integer "tax_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tax_id"], name: "index_provinces_on_tax_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "product_id"
    t.integer "store_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_stocks_on_product_id"
    t.index ["store_id"], name: "index_stocks_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.decimal "longitude"
    t.decimal "laitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxes", force: :cascade do |t|
    t.decimal "gst"
    t.decimal "pst"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_addresses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_user_addresses_on_address_id"
    t.index ["user_id"], name: "index_user_addresses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.integer "role_id"
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_users_on_address_id"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
