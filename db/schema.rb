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

ActiveRecord::Schema.define(version: 20151022085456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "input_materials", force: :cascade do |t|
    t.integer "input_id"
    t.integer "material_id"
    t.decimal "price"
    t.decimal "count"
  end

  add_index "input_materials", ["input_id"], name: "index_input_materials_on_input_id", using: :btree
  add_index "input_materials", ["material_id"], name: "index_input_materials_on_material_id", using: :btree

  create_table "inputs", force: :cascade do |t|
    t.string  "num"
    t.date    "date"
    t.integer "provider_id"
  end

  add_index "inputs", ["provider_id"], name: "index_inputs_on_provider_id", using: :btree

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.string   "option"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "unit"
    t.decimal  "price",      default: 0.0
    t.decimal  "count",      default: 0.0
  end

  create_table "order_products", force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "size_id"
    t.integer "color_id"
    t.integer "count",      default: 1
    t.string  "patina"
    t.string  "comment"
  end

  add_index "order_products", ["color_id"], name: "index_order_products_on_color_id", using: :btree
  add_index "order_products", ["order_id"], name: "index_order_products_on_order_id", using: :btree
  add_index "order_products", ["product_id"], name: "index_order_products_on_product_id", using: :btree
  add_index "order_products", ["size_id"], name: "index_order_products_on_size_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.string   "number"
    t.string   "delivery_address"
    t.integer  "customer_id"
    t.date     "date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.date     "deadline"
    t.string   "comment"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree

  create_table "output_materials", force: :cascade do |t|
    t.integer "output_id"
    t.integer "material_id"
    t.integer "count"
  end

  add_index "output_materials", ["material_id"], name: "index_output_materials_on_material_id", using: :btree
  add_index "output_materials", ["output_id"], name: "index_output_materials_on_output_id", using: :btree

  create_table "outputs", force: :cascade do |t|
    t.string  "num"
    t.date    "date"
    t.string  "order"
    t.integer "worker_id"
  end

  add_index "outputs", ["worker_id"], name: "index_outputs_on_worker_id", using: :btree

  create_table "product_groups", force: :cascade do |t|
    t.string "name"
  end

  create_table "product_materials", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "material_id"
    t.integer  "level",       default: 0
    t.decimal  "value",       default: 0.0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "product_materials", ["material_id"], name: "index_product_materials_on_material_id", using: :btree
  add_index "product_materials", ["product_id"], name: "index_product_materials_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string  "name"
    t.string  "description"
    t.integer "product_group_id"
    t.string  "image"
    t.integer "size_id"
  end

  add_index "products", ["product_group_id"], name: "index_products_on_product_group_id", using: :btree
  add_index "products", ["size_id"], name: "index_products_on_size_id", using: :btree

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address"
  end

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
    t.string  "email"
    t.string  "name"
    t.string  "password_digest"
    t.integer "post"
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.string "info"
  end

  add_foreign_key "input_materials", "inputs"
  add_foreign_key "input_materials", "materials"
  add_foreign_key "inputs", "providers"
  add_foreign_key "order_products", "colors"
  add_foreign_key "order_products", "orders"
  add_foreign_key "order_products", "products"
  add_foreign_key "order_products", "sizes"
  add_foreign_key "orders", "customers"
  add_foreign_key "output_materials", "materials"
  add_foreign_key "output_materials", "outputs"
  add_foreign_key "outputs", "workers"
  add_foreign_key "product_materials", "materials"
  add_foreign_key "product_materials", "products"
  add_foreign_key "products", "sizes"
  add_foreign_key "sizes", "product_groups"
end
