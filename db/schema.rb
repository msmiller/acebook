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

ActiveRecord::Schema.define(version: 20140731222535) do

  create_table "social_infos", force: true do |t|
    t.integer  "user_id"
    t.string   "homepage_url"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "myspace_url"
    t.string   "googleplus_url"
    t.string   "linkedin_url"
    t.string   "skype_url"
    t.string   "github_url"
    t.string   "deviantart_url"
    t.string   "flkickr_url"
    t.string   "instagram_url"
    t.string   "pinterest_url"
    t.string   "vimeo_url"
    t.string   "imdb_url"
    t.string   "youtube_url"
    t.string   "steam_url"
    t.string   "medium_url"
    t.string   "tumblr_url"
    t.string   "blogger_url"
    t.string   "wordpress_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
