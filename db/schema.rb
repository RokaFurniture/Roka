# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150805183302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.string   "option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "unit"
  end

  create_table "product_groups", force: :cascade do |t|
    t.string "name"
  end

  create_table "products", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.integer "product_group_id"
  end

  add_index "products", ["product_group_id"], name: "index_products_on_product_group_id", using: :btree

  create_table "sizes", force: :cascade do |t|
    t.integer  "height"
    t.integer  "length"
    t.integer  "width"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "product_group_id"
  end

  add_index "sizes", ["product_group_id"], name: "index_sizes_on_product_group_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "sizes", "product_groups"
end
