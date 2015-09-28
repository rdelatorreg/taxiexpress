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

ActiveRecord::Schema.define(version: 20150927002739) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "district_id",    limit: 4
    t.string   "flag",           limit: 255
    t.integer  "reservation_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "address",        limit: 255
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

  create_table "entidades", force: :cascade do |t|
    t.string   "Descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
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

  create_table "parametros", force: :cascade do |t|
    t.string   "texto",      limit: 255
    t.integer  "valor",      limit: 4
    t.integer  "entidad_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "parametros", ["entidad_id"], name: "index_parametros_on_entidad_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
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

<<<<<<< HEAD
  create_table "usuarios", force: :cascade do |t|
    t.string   "Nombres",    limit: 255
    t.string   "ApPaterno",  limit: 255
    t.string   "ApMaterno",  limit: 255
    t.string   "Nick",       limit: 255
    t.string   "Contrasena", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

=======
  add_foreign_key "parameters", "entities"
>>>>>>> 47321407d92a068b59d2bc910ac5d45f143e4c62
  add_foreign_key "parametros", "entidades", column: "entidad_id"
  add_foreign_key "reservations", "users"
end
