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

ActiveRecord::Schema.define(version: 20161006191528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.date     "start_date"
    t.string   "start_time"
    t.integer  "dock_id"
    t.integer  "vendor_id"
    t.boolean  "archive",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "docks", force: :cascade do |t|
    t.string   "name",                       null: false
    t.boolean  "available"
    t.boolean  "archive",    default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name",                       null: false
    t.boolean  "archive",    default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "worker_appointments", force: :cascade do |t|
    t.integer  "worker_id",      null: false
    t.integer  "appointment_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string   "name",                       null: false
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.float    "payrate"
    t.boolean  "archive",    default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end