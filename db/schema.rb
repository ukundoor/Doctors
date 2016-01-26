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

ActiveRecord::Schema.define(version: 20160119185616) do

  create_table "appointments", force: true do |t|
    t.datetime "next_appointment_date"
    t.string   "visit_purpose"
    t.integer  "Pet_id"
    t.integer  "Customer_id"
    t.integer  "Doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["Customer_id"], name: "index_appointments_on_Customer_id"
  add_index "appointments", ["Doctor_id"], name: "index_appointments_on_Doctor_id"
  add_index "appointments", ["Pet_id"], name: "index_appointments_on_Pet_id"

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "petName"
    t.string   "appointment_remainder"
    t.string   "visitPurpose"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "degree_obtained_from"
    t.integer  "experinece"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pets", force: true do |t|
    t.string   "name"
    t.string   "pet_type"
    t.string   "breed"
    t.integer  "age"
    t.integer  "weight"
    t.datetime "lastVisitedDate"
    t.integer  "Customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pets", ["Customer_id"], name: "index_pets_on_Customer_id"

end
