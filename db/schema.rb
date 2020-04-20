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

ActiveRecord::Schema.define(version: 2020_04_20_070611) do

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.string "description"
    t.integer "minVotes"
    t.integer "assistants"
    t.boolean "public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organization_files", force: :cascade do |t|
    t.string "file"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "subscription_id"
    t.integer "organization_file_id"
    t.index ["organization_file_id"], name: "index_organizations_on_organization_file_id"
    t.index ["subscription_id"], name: "index_organizations_on_subscription_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.integer "administrator_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "location"
    t.string "bio"
    t.integer "subscription_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_users_on_event_id"
    t.index ["subscription_id"], name: "index_users_on_subscription_id"
  end

  add_foreign_key "organizations", "organization_files"
  add_foreign_key "organizations", "subscriptions"
  add_foreign_key "users", "events"
  add_foreign_key "users", "subscriptions"
end
