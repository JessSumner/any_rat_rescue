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

ActiveRecord::Schema.define(version: 20160203152552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adoption_applications", force: :cascade do |t|
    t.string   "name",                      null: false
    t.string   "address",                   null: false
    t.string   "city",                      null: false
    t.string   "cell",                      null: false
    t.string   "state",                     null: false
    t.string   "zip",                       null: false
    t.string   "email",                     null: false
    t.string   "current_rats"
    t.integer  "current_rat_count"
    t.string   "current_rat_gender"
    t.string   "current_rat_age"
    t.string   "previous_rats"
    t.integer  "previous_rat_count"
    t.string   "previous_rat_lifespan"
    t.string   "cause_of_death"
    t.string   "vet_care"
    t.string   "vet_name"
    t.text     "cage_description"
    t.string   "cage_location"
    t.string   "household_members"
    t.string   "children_ages"
    t.string   "additional_animals"
    t.string   "interaction_time"
    t.text     "preferred_characteristics"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "newsletter_finders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "volunteer_applications", force: :cascade do |t|
    t.string   "name",                    null: false
    t.string   "address",                 null: false
    t.string   "city",                    null: false
    t.string   "state",                   null: false
    t.string   "zip",                     null: false
    t.string   "cell",                    null: false
    t.string   "email",                   null: false
    t.text     "reason_for_volunteering"
    t.string   "volunteering_type"
    t.text     "rat_cage_location"
    t.string   "transportation"
    t.string   "vet_appointments"
    t.string   "caring_for_ill_rats"
    t.string   "other_rats"
    t.string   "other_rats_count"
    t.string   "other_rats_gender"
    t.string   "other_rats_age"
    t.string   "other_animals"
    t.string   "other_animals_type"
    t.string   "other_animals_count"
    t.string   "work_location"
    t.string   "hours_away_from_home"
    t.string   "rat_interaction_time"
    t.string   "adoption_appointments"
    t.text     "comments_or_questions"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
