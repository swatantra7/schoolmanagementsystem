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

ActiveRecord::Schema.define(version: 20190310201123) do

  create_table "academic_records", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "add_column_student_id_to_admidcards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "add_column_student_id_to_results", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string   "villege"
    t.string   "state"
    t.string   "po"
    t.string   "dist"
    t.string   "pincode"
    t.string   "mobile"
    t.string   "email_id"
    t.datetime "dob"
    t.string   "session"
    t.string   "aadhar_number"
    t.string   "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "admidcards", force: :cascade do |t|
    t.string   "semester"
    t.string   "klass"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "admidcard_file_name"
    t.string   "admidcard_content_type"
    t.integer  "admidcard_file_size"
    t.datetime "admidcard_updated_at"
    t.integer  "student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "faculty"
    t.string   "title_of_course"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "documents", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.integer  "resource_id"
    t.string   "resource_type"
  end

  create_table "results", force: :cascade do |t|
    t.string   "semester"
    t.string   "klass"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "result_file_name"
    t.string   "result_content_type"
    t.integer  "result_file_size"
    t.datetime "result_updated_at"
    t.integer  "student_id"
  end

  create_table "student_sheets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer  "age"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "fname"
    t.string   "mname"
    t.string   "blood_group"
    t.string   "email"
    t.string   "password"
    t.string   "confirm_password"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "fname"
    t.string   "mname"
    t.string   "blood_group"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
