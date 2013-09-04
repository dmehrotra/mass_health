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

ActiveRecord::Schema.define(version: 20130903212621) do

  create_table "town_health_records", force: true do |t|
    t.string   "town"
    t.float    "total_population"
    t.float    "youth_population"
    t.float    "elder_population"
    t.float    "income"
    t.float    "poverty"
    t.float    "poverty_percentage"
    t.float    "prenatal_care"
    t.float    "c_section"
    t.float    "infant_deaths"
    t.float    "infant_mortality"
    t.float    "low_birthweight"
    t.float    "multiple_births"
    t.float    "publicly_financed_prenatal"
    t.float    "teen_preg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
