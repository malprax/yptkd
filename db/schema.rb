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

ActiveRecord::Schema.define(version: 20161002143634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basic_salaries", force: :cascade do |t|
    t.string   "golongan"
    t.float    "satuan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string   "nama"
    t.float    "satuan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "functional_allowances", force: :cascade do |t|
    t.string   "nama"
    t.float    "satuan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.string   "nama"
    t.string   "nidn"
    t.string   "education_id"
    t.string   "functional_allowance_id"
    t.string   "structural_allowance_id"
    t.string   "special_allowance_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "periods", force: :cascade do |t|
    t.string   "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salaries", force: :cascade do |t|
    t.string   "form_number"
    t.string   "period_id"
    t.string   "lecture_id"
    t.float    "tax"
    t.float    "regular_gathering"
    t.float    "total"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "special_allowances", force: :cascade do |t|
    t.string   "nama"
    t.float    "satuan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "structural_allowances", force: :cascade do |t|
    t.string   "nama"
    t.float    "satuan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
