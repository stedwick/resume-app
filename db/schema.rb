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

ActiveRecord::Schema.define(version: 20180413005930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.string "icon"
    t.string "description"
    t.text "blurb"
    t.string "dates"
    t.string "location"
    t.string "type_of"
    t.string "image"
    t.string "fa"
    t.integer "order"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_items_on_name"
    t.index ["order"], name: "index_items_on_order"
    t.index ["person_id"], name: "index_items_on_person_id"
    t.index ["type_of"], name: "index_items_on_type_of"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.string "location"
    t.string "github"
    t.string "linkedin"
    t.string "facebook"
    t.string "twitter"
    t.text "career_blurb"
    t.text "skills_blurb"
    t.text "education_blurb"
    t.text "work_blurb"
    t.text "projects_blurb"
    t.text "old_blurb"
    t.text "personal_blurb"
    t.text "contact_blurb"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_pic"
    t.string "background_img"
  end

end
