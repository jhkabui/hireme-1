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

ActiveRecord::Schema.define(version: 2020_03_04_141753) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.bigint "user_id"
    t.string "status"
    t.text "extra_step"
    t.boolean "accepted"
    t.text "letter_of_motivation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "job_id"
    t.index ["job_id"], name: "index_applications_on_job_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "interviews", force: :cascade do |t|
    t.string "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "application_id"
    t.index ["application_id"], name: "index_interviews_on_application_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.text "description"
    t.string "category"
    t.text "requirement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "application_id"
    t.index ["application_id"], name: "index_jobs_on_application_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "jobs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jobs_id"], name: "index_steps_on_jobs_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "telephone"
    t.text "cv"
    t.text "address"
    t.float "grade_point_average"
    t.string "highest_education_attained"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applications", "jobs"
  add_foreign_key "applications", "users"
  add_foreign_key "interviews", "applications"
  add_foreign_key "jobs", "applications"
  add_foreign_key "steps", "jobs", column: "jobs_id"
end
