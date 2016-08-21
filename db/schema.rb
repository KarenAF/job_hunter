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

ActiveRecord::Schema.define(version: 20160821213004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_skills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "company"
    t.string   "position"
    t.string   "source"
    t.string   "status"
    t.datetime "found_date"
    t.text     "listing_url"
    t.string   "job_type"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone_number"
    t.string   "company_website"
    t.decimal  "hourly_wage",     precision: 13, scale: 2
    t.decimal  "salary",          precision: 13, scale: 2
    t.datetime "applied_date"
    t.datetime "interview_date"
    t.datetime "offer_date"
    t.integer  "rating"
    t.text     "notes"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "networkings", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "date_contacted"
    t.string   "email"
    t.integer  "job_id"
    t.boolean  "emailed"
    t.boolean  "phoned"
    t.boolean  "letter_sent"
    t.text     "notes"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone_number"
    t.string   "address"
    t.string   "prospective_address"
    t.string   "Linkedin_page"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
