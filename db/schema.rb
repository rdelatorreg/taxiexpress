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

ActiveRecord::Schema.define(version: 20151012221508) do

  create_table "car_brands", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "carousels", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "cars", force: :cascade do |t|
    t.integer  "brand_id",    limit: 4
    t.integer  "status_id",   limit: 4
    t.string   "model",       limit: 255
    t.integer  "year",        limit: 4
    t.string   "description", limit: 255
    t.integer  "driver_id",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "cars", ["driver_id"], name: "index_cars_on_driver_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "firstname",              limit: 255
    t.string   "lastname",               limit: 255
    t.integer  "documenttype",           limit: 4
    t.integer  "documentnumber",         limit: 4
    t.text     "address",                limit: 65535
    t.date     "birthdate"
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true, using: :btree
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "message",    limit: 255
    t.string   "email",      limit: 255
    t.string   "body",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "first_name",     limit: 255
    t.string   "last_name",      limit: 255
    t.date     "birth_date"
    t.string   "license_number", limit: 255
    t.string   "email",          limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "vehicle_id",     limit: 4
  end

  add_index "drivers", ["vehicle_id"], name: "index_drivers_on_vehicle_id", using: :btree

  create_table "entities", force: :cascade do |t|
    t.string   "Description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "galeries", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "description",        limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "mystreets", force: :cascade do |t|
    t.integer  "client_id",   limit: 4
    t.integer  "district_id", limit: 4
    t.text     "street",      limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "parameters", force: :cascade do |t|
    t.string   "text",       limit: 255
    t.integer  "value",      limit: 4
    t.integer  "entity_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "parameters", ["entity_id"], name: "index_parameters_on_entity_id", using: :btree

  create_table "rates", force: :cascade do |t|
    t.decimal  "price",                    precision: 10
    t.integer  "origin_id",      limit: 4
    t.integer  "destination_id", limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "origin_id",           limit: 4
    t.integer  "destination_id",      limit: 4
    t.datetime "pickuptime"
    t.text     "origin_street",       limit: 65535
    t.text     "destination_street",  limit: 65535
    t.decimal  "price",                             precision: 10
    t.decimal  "igv",                               precision: 10
    t.decimal  "totalprice",                        precision: 10
    t.integer  "qualification",       limit: 4
    t.integer  "client_id",           limit: 4
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "driver_id",           limit: 4
    t.integer  "status_id",           limit: 4
    t.integer  "saved_origin_id",     limit: 4
    t.integer  "saved_destinaion_id", limit: 4
    t.text     "feedback",            limit: 65535
  end

  add_index "reservations", ["client_id"], name: "index_reservations_on_client_id", using: :btree
  add_index "reservations", ["driver_id"], name: "index_reservations_on_driver_id", using: :btree

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

  create_table "workwithus", force: :cascade do |t|
    t.string   "name",                  limit: 255
    t.integer  "age",                   limit: 4
    t.string   "email",                 limit: 255
    t.string   "license_number",        limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "document_file_name",    limit: 255
    t.string   "document_content_type", limit: 255
    t.integer  "document_file_size",    limit: 4
    t.datetime "document_updated_at"
  end

  add_foreign_key "cars", "drivers"
  add_foreign_key "parameters", "entities"
  add_foreign_key "reservations", "clients"
  add_foreign_key "vehicles", "car_brands"
end
