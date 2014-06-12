# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140612150350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"
  enable_extension "hstore"

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.decimal  "lat",            precision: 10, scale: 6
    t.decimal  "lon",            precision: 10, scale: 6
    t.uuid     "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street_address"
    t.string   "full_address"
    t.string   "slug"
  end

  add_index "accounts", ["slug"], name: "index_accounts_on_slug", unique: true, using: :btree

  create_table "attachinary_files", force: true do |t|
    t.integer  "attachinariable_id"
    t.string   "attachinariable_type"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachinary_files", ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree

  create_table "observations", force: true do |t|
    t.integer  "account_id"
    t.string   "site_name",                                        null: false
    t.integer  "wind_speed",                                       null: false
    t.integer  "humidity",                                         null: false
    t.string   "sky_conditions",                                   null: false
    t.hstore   "recent_weather",                                   null: false
    t.datetime "time_of_monitor",                                  null: false
    t.decimal  "high_tide_level",          precision: 4, scale: 2, null: false
    t.string   "approx_tide_level",                                null: false
    t.hstore   "water_conditions",                                 null: false
    t.hstore   "oyster_cage_conditions",                           null: false
    t.text     "land_conditions",                                  null: false
    t.hstore   "oyster_survey",                                    null: false
    t.hstore   "reef_associate_survey",                            null: false
    t.hstore   "water_quality_assessment",                         null: false
    t.text     "general_observations",                             null: false
    t.uuid     "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "observations", ["account_id"], name: "index_observations_on_account_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "caption"
    t.uuid     "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.string   "name"
    t.integer  "account_id"
    t.decimal  "lat",        precision: 10, scale: 6, default: 0.0, null: false
    t.decimal  "lon",        precision: 10, scale: 6, default: 0.0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["account_id"], name: "index_sites_on_account_id", using: :btree

  create_table "users", id: :uuid, default: "uuid_generate_v4()", force: true do |t|
    t.string   "email",                                           default: "",    null: false
    t.string   "encrypted_password",                              default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                                           default: false
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.boolean  "moderator",                                       default: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city",                                            default: "",    null: false
    t.decimal  "lat",                    precision: 10, scale: 6, default: 40.67, null: false
    t.decimal  "lon",                    precision: 10, scale: 6, default: 73.94, null: false
    t.string   "slug"
    t.hstore   "settings"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["settings"], name: "index_users_on_settings", using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", using: :btree

end
