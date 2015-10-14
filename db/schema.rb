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

ActiveRecord::Schema.define(version: 20151014085026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "masking_number_allocations", force: :cascade do |t|
    t.integer  "phone_book_id",                 null: false
    t.integer  "phone_circuit_id",              null: false
    t.integer  "masking_phone_number_id",       null: false
    t.datetime "created_at",                    null: false
    t.integer  "last_used_phone_book_entry_id"
  end

  add_index "masking_number_allocations", ["phone_book_id", "phone_circuit_id"], name: "index_mna_on_phone_book_id_and_phone_circuit_id", using: :btree

  create_table "masking_numbers", force: :cascade do |t|
    t.string   "region_id",    null: false
    t.string   "phone_number", null: false
    t.datetime "created_at",   null: false
  end

  add_index "masking_numbers", ["created_at"], name: "index_masking_numbers_on_created_at", using: :btree
  add_index "masking_numbers", ["phone_number"], name: "index_masking_numbers_on_phone_number", unique: true, using: :btree
  add_index "masking_numbers", ["region_id"], name: "index_masking_numbers_on_region_id", using: :btree

  create_table "phone_book_entries", force: :cascade do |t|
    t.string   "name",          default: "noname", null: false
    t.integer  "phone_book_id",                    null: false
    t.string   "phone_number",  default: "",       null: false
    t.datetime "created_at",                       null: false
  end

  add_index "phone_book_entries", ["phone_book_id"], name: "index_phone_book_entries_on_phone_book_id", using: :btree
  add_index "phone_book_entries", ["phone_number"], name: "index_phone_book_entries_on_phone_number", using: :btree

  create_table "phone_books", force: :cascade do |t|
    t.integer  "owner_id",                    null: false
    t.string   "owner_type",                  null: false
    t.integer  "region_id",                   null: false
    t.integer  "default_phone_book_entry_id", null: false
    t.datetime "created_at",                  null: false
  end

  add_index "phone_books", ["owner_id", "owner_type"], name: "index_phone_books_on_owner_id_and_owner_type", using: :btree

  create_table "phone_circuits", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.integer  "reason_id",   null: false
    t.string   "reason_type", null: false
  end

end
