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

ActiveRecord::Schema.define(version: 20170513202844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advisors", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.string   "logo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "zip_code"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.integer  "risk_tolerance"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "invitations", force: :cascade do |t|
    t.datetime "expiration"
    t.integer  "advisor_id"
    t.integer  "client_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proposals", force: :cascade do |t|
    t.integer  "risk_model_id"
    t.integer  "client_id"
    t.integer  "advisor_id"
    t.string   "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "pdf"
    t.integer  "questionnaire_id"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "question_1"
    t.integer  "question_2"
    t.integer  "question_3"
    t.integer  "question_4"
    t.integer  "question_5"
    t.integer  "question_6"
    t.integer  "question_7"
    t.integer  "question_8"
    t.integer  "question_9"
    t.integer  "question_10"
    t.integer  "question_11"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.decimal  "average"
    t.integer  "advisor_id"
  end

  create_table "risk_models", force: :cascade do |t|
    t.string   "name"
    t.integer  "risk_level"
    t.text     "description"
    t.string   "companies"
    t.string   "etfs"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "stocks"
    t.integer  "bonds"
  end

end
