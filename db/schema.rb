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

ActiveRecord::Schema.define(version: 20130923002458) do

  create_table "buyers", force: true do |t|
    t.string   "company"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone_1"
    t.string   "contact_phone_2"
    t.string   "shipping_address_line_1"
    t.string   "shipping_address_line_2"
    t.string   "factura_information"
    t.string   "special_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shipping_address_line_3"
    t.string   "factura_information_RUC"
    t.string   "factura_information_phone"
    t.string   "factura_information_address"
    t.string   "special_instructions_2"
    t.string   "special_instructions_3"
    t.string   "special_instructions_4"
    t.string   "store_image_file_name"
    t.string   "store_image_content_type"
    t.integer  "store_image_file_size"
    t.datetime "store_image_updated_at"
    t.decimal  "necklaces_blue"
    t.decimal  "necklaces_yellow"
    t.decimal  "necklaces_green"
    t.decimal  "bracelets"
    t.decimal  "earrings"
    t.decimal  "keychains"
    t.decimal  "wallets"
  end

  create_table "sales", force: true do |t|
    t.decimal  "amount"
    t.date     "date"
    t.string   "name"
    t.boolean  "export"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "factura_file_name"
    t.string   "factura_content_type"
    t.integer  "factura_file_size"
    t.datetime "factura_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
