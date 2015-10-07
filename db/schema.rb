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

ActiveRecord::Schema.define(version: 20151007042449) do

  create_table "car_brands", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "message",    limit: 255
    t.string   "email",      limit: 255
    t.string   "body",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "curriculums", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "documenttypes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "entities", force: :cascade do |t|
    t.string   "Description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "parameters", force: :cascade do |t|
    t.string   "text",       limit: 255
    t.integer  "value",      limit: 4
    t.integer  "entity_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "parameters", ["entity_id"], name: "index_parameters_on_entity_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.string   "source_addres",     limit: 255
    t.string   "final_addres",      limit: 255
    t.integer  "user_id",           limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "districtsource_id", limit: 4
    t.integer  "districtfinal_id",  limit: 4
  end

  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.string   "last_name",             limit: 255
    t.string   "nick",                  limit: 255
    t.integer  "phone",                 limit: 4
    t.integer  "identification_number", limit: 4
    t.string   "emai",                  limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest",       limit: 255
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "model",            limit: 255
    t.integer  "fabrication_year", limit: 4
    t.string   "color",            limit: 255
    t.string   "serial_number",    limit: 255
    t.integer  "car_brand_id",     limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "license_plate",    limit: 255
  end

  add_index "vehicles", ["car_brand_id"], name: "index_vehicles_on_car_brand_id", using: :btree

  add_foreign_key "parameters", "entities"
  add_foreign_key "reservations", "users"
  add_foreign_key "vehicles", "car_brands"
end
