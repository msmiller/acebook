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

ActiveRecord::Schema.define(version: 2014_09_13_044356) do

  create_table "comments", force: :cascade do |t|
    t.integer "commentable_id", default: 0
    t.string "commentable_type"
    t.string "title"
    t.text "body"
    t.string "subject"
    t.integer "user_id", default: 0, null: false
    t.integer "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "game_infos", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "played", default: false
    t.string "game_code", limit: 2
    t.string "cpid", limit: 8
    t.string "country"
    t.string "squadron"
    t.string "plane"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "links", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "description"
    t.string "url"
    t.boolean "approved"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lores", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "approved"
    t.string "game", limit: 16
    t.string "kind", limit: 16
  end

  create_table "social_infos", force: :cascade do |t|
    t.integer "user_id"
    t.string "homepage_url"
    t.string "facebook_url"
    t.string "twitter_url"
    t.string "myspace_url"
    t.string "googleplus_url"
    t.string "linkedin_url"
    t.string "skype_url"
    t.string "github_url"
    t.string "deviantart_url"
    t.string "flickr_url"
    t.string "instagram_url"
    t.string "pinterest_url"
    t.string "vimeo_url"
    t.string "imdb_url"
    t.string "youtube_url"
    t.string "steam_url"
    t.string "medium_url"
    t.string "tumblr_url"
    t.string "blogger_url"
    t.string "wordpress_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "timelines", force: :cascade do |t|
    t.integer "user_id"
    t.integer "month"
    t.integer "year"
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "approved"
    t.string "game", limit: 16
    t.string "kind", limit: 16
  end

  create_table "user_infos", force: :cascade do |t|
    t.integer "user_id"
    t.string "handle"
    t.string "name"
    t.string "other_handles"
    t.string "squadron"
    t.string "city"
    t.string "state"
    t.string "country"
    t.text "message"
    t.integer "year_started"
    t.string "planes"
    t.string "aw_cpid", limit: 16
    t.string "wb_cpid", limit: 16
    t.string "ah_cpid", limit: 16
    t.string "aw_country"
    t.string "wb_country"
    t.string "ah_country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "icon"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
