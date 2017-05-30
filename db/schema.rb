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

ActiveRecord::Schema.define(version: 20170529010029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "normalized_name", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_categories_on_user_id", using: :btree
  end

  create_table "common_categories", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "normalized_name", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "common_ingredients", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "normalized_name", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "normalized_name", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_ingredients_on_user_id", using: :btree
  end

  create_table "measurement_units", force: :cascade do |t|
    t.string   "name",                null: false
    t.integer  "measurement_unit_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["measurement_unit_id"], name: "index_measurement_units_on_measurement_unit_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                                null: false
    t.string   "email",                               null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.integer  "state"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "categories", "users"
  add_foreign_key "ingredients", "users"
  add_foreign_key "measurement_units", "measurement_units"
end
