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

ActiveRecord::Schema.define(version: 20170107235941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "origin_inputs", force: :cascade do |t|
    t.text     "prev_hash"
    t.integer  "output_index"
    t.text     "script"
    t.integer  "output_value"
    t.decimal  "sequence"
    t.text     "addresses"
    t.string   "script_type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "origin_transaction_id"
  end

  add_index "origin_inputs", ["origin_transaction_id"], name: "index_origin_inputs_on_origin_transaction_id", using: :btree

  create_table "origin_outputs", force: :cascade do |t|
    t.integer  "value"
    t.text     "script"
    t.text     "addresses"
    t.string   "script_type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "origin_transaction_id"
  end

  add_index "origin_outputs", ["origin_transaction_id"], name: "index_origin_outputs_on_origin_transaction_id", using: :btree

  create_table "origin_transactions", force: :cascade do |t|
    t.integer  "block_height"
    t.integer  "block_index"
    t.text     "origin_hash"
    t.integer  "total"
    t.integer  "fees"
    t.integer  "size"
    t.string   "preference"
    t.string   "relayed_by"
    t.datetime "received"
    t.integer  "ver"
    t.integer  "lock_time"
    t.boolean  "double_spend"
    t.integer  "vin_sz"
    t.integer  "vout_sz"
    t.integer  "confirmations"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "origin_inputs", "origin_transactions"
  add_foreign_key "origin_outputs", "origin_transactions"
end
