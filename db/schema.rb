# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_12_19_170601) do
  create_table "exams", force: :cascade do |t|
    t.integer "grade_id", null: false
    t.integer "subject_id", null: false
    t.integer "shift_id", null: false
    t.integer "professor_id", null: false
    t.integer "step"
    t.string "exam_type"
    t.date "date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_exams_on_grade_id"
    t.index ["professor_id"], name: "index_exams_on_professor_id"
    t.index ["shift_id"], name: "index_exams_on_shift_id"
    t.index ["subject_id"], name: "index_exams_on_subject_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.date "date"
    t.string "step"
    t.string "type"
    t.integer "subject_id", null: false
    t.integer "grade_id", null: false
    t.integer "shift_id", null: false
    t.integer "professor_id", null: false
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_tests_on_grade_id"
    t.index ["professor_id"], name: "index_tests_on_professor_id"
    t.index ["shift_id"], name: "index_tests_on_shift_id"
    t.index ["subject_id"], name: "index_tests_on_subject_id"
  end

  add_foreign_key "exams", "grades"
  add_foreign_key "exams", "professors"
  add_foreign_key "exams", "shifts"
  add_foreign_key "exams", "subjects"
  add_foreign_key "tests", "grades"
  add_foreign_key "tests", "professors"
  add_foreign_key "tests", "shifts"
  add_foreign_key "tests", "subjects"
end
