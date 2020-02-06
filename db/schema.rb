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

ActiveRecord::Schema.define(version: 2020_01_31_154657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "logo"
    t.string "industry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.string "category"
    t.string "summary"
    t.text "description"
    t.integer "sal_range_low"
    t.integer "sal_range_high"
    t.boolean "active"
    t.bigint "employer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employer_id"], name: "index_jobs_on_employer_id"
  end

  create_table "portfolio_items", force: :cascade do |t|
    t.string "title"
    t.text "blurb"
    t.string "git_url"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_portfolio_items_on_user_id"
  end

  create_table "user_apps", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "job_id"
    t.text "mini_cl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_user_apps_on_job_id"
    t.index ["user_id"], name: "index_user_apps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "bootcamp"
    t.string "category"
    t.integer "grad_month"
    t.integer "grad_year"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "jobs", "employers"
  add_foreign_key "portfolio_items", "users"
  add_foreign_key "user_apps", "jobs"
  add_foreign_key "user_apps", "users"
end
