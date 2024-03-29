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

ActiveRecord::Schema.define(version: 20140617102158) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pro_names", force: true do |t|
    t.integer  "sub_id"
    t.string   "productName"
    t.string   "description"
    t.integer  "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_details", force: true do |t|
    t.integer  "sub_categories_id"
    t.string   "productName"
    t.string   "description"
    t.integer  "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "sub_category_id"
    t.string   "productName"
    t.string   "description"
    t.integer  "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "sub_categories", force: true do |t|
    t.integer  "category_id"
    t.string   "Sub_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
