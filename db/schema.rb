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

ActiveRecord::Schema.define(version: 2020_06_17_212603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "announcements", force: :cascade do |t|
    t.datetime "published_at"
    t.string "announcement_type"
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "committee_memberships", force: :cascade do |t|
    t.bigint "term_id", null: false
    t.bigint "committee_id", null: false
    t.string "side"
    t.string "title"
    t.integer "rank_in_party"
    t.string "begin_date"
    t.string "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["committee_id"], name: "index_committee_memberships_on_committee_id"
    t.index ["term_id"], name: "index_committee_memberships_on_term_id"
  end

  create_table "committees", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "api_uri"
    t.bigint "congress_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["congress_id"], name: "index_committees_on_congress_id"
  end

  create_table "congresses", force: :cascade do |t|
    t.bigint "congressional_member_id", null: false
    t.bigint "congressional_chamber_id", null: false
    t.integer "congress_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["congressional_chamber_id"], name: "index_congresses_on_congressional_chamber_id"
    t.index ["congressional_member_id"], name: "index_congresses_on_congressional_member_id"
  end

  create_table "congressional_chambers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "congressional_members", force: :cascade do |t|
    t.string "title"
    t.string "short_title"
    t.string "bio_directory_id"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "suffix"
    t.string "date_of_birth"
    t.string "gender"
    t.string "party"
    t.string "leadership_role"
    t.string "twitter_account"
    t.string "facebook_account"
    t.string "youtube_account"
    t.string "govtrack_id"
    t.string "cspan_id"
    t.string "votesmart_id"
    t.string "icpsr_id"
    t.string "crp_id"
    t.string "google_entity_id"
    t.string "fec_candidate_id"
    t.string "url"
    t.string "rss_url"
    t.string "contact_form"
    t.string "in_office"
    t.string "cook_pvi"
    t.string "dw_nominate"
    t.string "ideal_point"
    t.string "seniority"
    t.string "next_election"
    t.string "total_votes"
    t.string "missed_votes"
    t.string "total_present"
    t.string "ocd_id"
    t.string "office"
    t.string "phone"
    t.string "fax"
    t.string "state"
    t.string "senate_class"
    t.string "state_rank"
    t.string "lis_id"
    t.string "missed_votes_pct"
    t.string "votes_with_party_pct"
    t.string "votes_against_party_pct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.bigint "recipient_id"
    t.bigint "actor_id"
    t.datetime "read_at"
    t.string "action"
    t.bigint "notifiable_id"
    t.string "notifiable_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "provider"
    t.string "uid"
    t.string "access_token"
    t.string "access_token_secret"
    t.string "refresh_token"
    t.datetime "expires_at"
    t.text "auth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "subcommittee_memberships", force: :cascade do |t|
    t.bigint "term_id", null: false
    t.bigint "subcommittee_id", null: false
    t.string "side"
    t.string "title"
    t.integer "rank_in_party"
    t.string "begin_date"
    t.string "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subcommittee_id"], name: "index_subcommittee_memberships_on_subcommittee_id"
    t.index ["term_id"], name: "index_subcommittee_memberships_on_term_id"
  end

  create_table "subcommittees", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "api_uri"
    t.bigint "congress_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["congress_id"], name: "index_subcommittees_on_congress_id"
  end

  create_table "terms", force: :cascade do |t|
    t.bigint "congress_id", null: false
    t.bigint "congressional_member_id", null: false
    t.bigint "congressional_chamber_id", null: false
    t.string "title"
    t.string "short_title"
    t.string "state"
    t.string "party"
    t.string "leadership_role"
    t.string "fec_candidate_id"
    t.string "seniority"
    t.string "district"
    t.boolean "at_large"
    t.string "ocd_id"
    t.date "start_date"
    t.date "end_date"
    t.string "office"
    t.string "phone"
    t.string "fax"
    t.string "contact_form"
    t.string "cook_pvi"
    t.float "dw_nominate"
    t.string "ideal_point"
    t.string "next_election"
    t.integer "total_votes"
    t.integer "missed_votes"
    t.integer "total_present"
    t.string "senate_class"
    t.string "state_rank"
    t.string "lis_id"
    t.integer "bills_sponsored"
    t.integer "bills_cosponsored"
    t.float "missed_votes_pct"
    t.float "votes_with_party_pct"
    t.float "votes_against_party_pct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["congress_id"], name: "index_terms_on_congress_id"
    t.index ["congressional_chamber_id"], name: "index_terms_on_congressional_chamber_id"
    t.index ["congressional_member_id"], name: "index_terms_on_congressional_member_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.datetime "announcements_last_read_at"
    t.boolean "admin", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "committee_memberships", "committees"
  add_foreign_key "committee_memberships", "terms"
  add_foreign_key "committees", "congresses"
  add_foreign_key "congresses", "congressional_chambers"
  add_foreign_key "congresses", "congressional_members"
  add_foreign_key "services", "users"
  add_foreign_key "subcommittee_memberships", "subcommittees"
  add_foreign_key "subcommittee_memberships", "terms"
  add_foreign_key "subcommittees", "congresses"
  add_foreign_key "terms", "congresses"
  add_foreign_key "terms", "congressional_chambers"
  add_foreign_key "terms", "congressional_members"
end
