# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_10_084828) do

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "college_name", null: false
    t.string "gakubu_name", null: false
    t.string "gakka_name"
    t.string "one_word"
    t.string "circle_name"
    t.string "exp_occ"
    t.string "qualification_name"
    t.integer "intern_history_id", null: false
    t.integer "graduation_id", null: false
    t.integer "prefecture_id", null: false
    t.integer "industry_id", null: false
    t.integer "gender_id", null: false
    t.integer "grade_id", null: false
    t.integer "sales_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
