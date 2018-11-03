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

ActiveRecord::Schema.define(version: 2018_09_30_114000) do

  create_table "addresses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "city"
    t.string "country"
    t.string "zip_code"
    t.string "kind"
    t.string "addressable_type"
    t.integer "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string "month"
    t.string "year"
    t.string "last_digits"
    t.string "name"
    t.string "cc_type"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_credit_cards_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal "item_total", precision: 12, scale: 2, default: "0.0"
    t.decimal "shipment_amount", precision: 12, scale: 2, default: "0.0"
    t.decimal "tax_amount", precision: 12, scale: 2, default: "0.0"
    t.decimal "total", precision: 12, scale: 2, default: "0.0"
    t.integer "state", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipping_methods", force: :cascade do |t|
    t.string "name"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_shipping_methods_on_order_id"
  end

end
