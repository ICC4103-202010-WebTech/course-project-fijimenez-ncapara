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

ActiveRecord::Schema.define(version: 2020_04_20_085309) do

  create_table "comments", force: :cascade do |t|
    t.string "description"
    t.integer "reply_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "date_options", force: :cascade do |t|
    t.date "desired_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.integer "vote_date_id"
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
    t.integer "event_invitation_id"
    t.integer "report_id"
    t.integer "comment_id"
    t.integer "event_file_id"
    t.integer "date_option_id"
    t.index ["comment_id"], name: "index_events_on_comment_id"
    t.index ["date_option_id"], name: "index_events_on_date_option_id"
    t.index ["event_file_id"], name: "index_events_on_event_file_id"
    t.index ["event_invitation_id"], name: "index_events_on_event_invitation_id"
    t.index ["report_id"], name: "index_events_on_report_id"
  end

  create_table "inbox_messages", force: :cascade do |t|
    t.string "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mail_boxes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "inbox_message_id"
    t.index ["inbox_message_id"], name: "index_mail_boxes_on_inbox_message_id"
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

  create_table "reports", force: :cascade do |t|
    t.string "motive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.integer "event_invitation_id"
    t.integer "report_id"
    t.integer "comment_id"
    t.integer "mail_box_id"
    t.index ["comment_id"], name: "index_users_on_comment_id"
    t.index ["event_id"], name: "index_users_on_event_id"
    t.index ["event_invitation_id"], name: "index_users_on_event_invitation_id"
    t.index ["mail_box_id"], name: "index_users_on_mail_box_id"
    t.index ["report_id"], name: "index_users_on_report_id"
    t.index ["subscription_id"], name: "index_users_on_subscription_id"
  end

  create_table "vote_dates", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "date_option_id"
    t.index ["date_option_id"], name: "index_vote_dates_on_date_option_id"
  end

  add_foreign_key "event_invitations", "vote_dates"
  add_foreign_key "events", "comments"
  add_foreign_key "events", "date_options"
  add_foreign_key "events", "event_files"
  add_foreign_key "events", "event_invitations"
  add_foreign_key "events", "reports"
  add_foreign_key "mail_boxes", "inbox_messages"
  add_foreign_key "organizations", "organization_files"
  add_foreign_key "organizations", "subscriptions"
  add_foreign_key "users", "comments"
  add_foreign_key "users", "event_invitations"
  add_foreign_key "users", "events"
  add_foreign_key "users", "mail_boxes"
  add_foreign_key "users", "reports"
  add_foreign_key "users", "subscriptions"
  add_foreign_key "vote_dates", "date_options"
end
