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

ActiveRecord::Schema.define(version: 2020_04_20_093844) do

  create_table "comments", force: :cascade do |t|
    t.string "description"
    t.integer "reply_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "date_options", force: :cascade do |t|
    t.date "desired_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vote_date_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_date_options_on_event_id"
    t.index ["vote_date_id"], name: "index_date_options_on_vote_date_id"
  end

  create_table "event_files", force: :cascade do |t|
    t.string "file"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_invitations", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "event_id"
    t.integer "vote_date_id"
    t.index ["event_id"], name: "index_event_invitations_on_event_id"
    t.index ["user_id"], name: "index_event_invitations_on_user_id"
    t.index ["vote_date_id"], name: "index_event_invitations_on_vote_date_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.string "description"
    t.integer "minVotes"
    t.integer "assistants"
    t.boolean "public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "event_file_id"
    t.index ["event_file_id"], name: "index_events_on_event_file_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "inbox_messages", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "mail_box_id"
    t.index ["mail_box_id"], name: "index_inbox_messages_on_mail_box_id"
  end

  create_table "mail_boxes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string "note"
    t.string "file"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
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
    t.integer "organization_file_id"
    t.index ["organization_file_id"], name: "index_organizations_on_organization_file_id"
  end

  create_table "reports", force: :cascade do |t|
    t.string "motive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_reports_on_event_id"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "organization_id"
    t.index ["organization_id"], name: "index_subscriptions_on_organization_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
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
    t.integer "mail_box_id"
    t.index ["mail_box_id"], name: "index_users_on_mail_box_id"
  end

  create_table "vote_dates", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "events"
  add_foreign_key "comments", "users"
  add_foreign_key "date_options", "events"
  add_foreign_key "date_options", "vote_dates"
  add_foreign_key "event_invitations", "events"
  add_foreign_key "event_invitations", "users"
  add_foreign_key "event_invitations", "vote_dates"
  add_foreign_key "events", "event_files"
  add_foreign_key "events", "users"
  add_foreign_key "inbox_messages", "mail_boxes"
  add_foreign_key "notifications", "users"
  add_foreign_key "organizations", "organization_files"
  add_foreign_key "reports", "events"
  add_foreign_key "reports", "users"
  add_foreign_key "subscriptions", "organizations"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "users", "mail_boxes"
end
