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

ActiveRecord::Schema.define(version: 20160406152816) do

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.boolean  "approved",   default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "employer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["employer_id"], name: "index_events_on_employer_id"

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.decimal  "pay_rate",    precision: 8, scale: 2, default: 10.0, null: false
    t.integer  "employer_id"
    t.integer  "event_id"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "jobs", ["employer_id"], name: "index_jobs_on_employer_id"
  add_index "jobs", ["event_id"], name: "index_jobs_on_event_id"

  create_table "shifts", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "job_id"
    t.decimal  "net_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shifts", ["job_id"], name: "index_shifts_on_job_id"

end
