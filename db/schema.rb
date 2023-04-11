# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_11_162114) do
  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace", limit: 255
    t.text "body"
    t.string "resource_id", limit: 255, null: false
    t.string "resource_type", limit: 255, null: false
    t.integer "author_id"
    t.string "author_type", limit: 255
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.integer "commentable_id", default: 0
    t.string "commentable_type", limit: 255
    t.string "title", limit: 255
    t.text "body"
    t.string "subject", limit: 255
    t.integer "user_id", default: 0, null: false
    t.integer "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "forum_categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "color", default: "000000"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "forum_posts", force: :cascade do |t|
    t.integer "forum_thread_id"
    t.integer "user_id"
    t.text "body"
    t.boolean "solved", default: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "forum_subscriptions", force: :cascade do |t|
    t.integer "forum_thread_id"
    t.integer "user_id"
    t.string "subscription_type"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "forum_threads", force: :cascade do |t|
    t.integer "forum_category_id"
    t.integer "user_id"
    t.string "title", null: false
    t.string "slug", null: false
    t.integer "forum_posts_count", default: 0
    t.boolean "pinned", default: false
    t.boolean "solved", default: false
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at", precision: nil
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "game_infos", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "played", default: false
    t.string "game_code", limit: 2
    t.string "cpid", limit: 8
    t.string "country", limit: 255
    t.string "squadron", limit: 255
    t.string "plane", limit: 255
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "links", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", limit: 255
    t.string "description", limit: 255
    t.string "url", limit: 255
    t.boolean "approved"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "lores", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", limit: 255
    t.text "body"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.boolean "approved"
    t.string "game", limit: 16
    t.string "kind", limit: 16
  end

  create_table "social_infos", force: :cascade do |t|
    t.integer "user_id"
    t.string "homepage_url", limit: 255
    t.string "facebook_url", limit: 255
    t.string "twitter_url", limit: 255
    t.string "myspace_url", limit: 255
    t.string "googleplus_url", limit: 255
    t.string "linkedin_url", limit: 255
    t.string "skype_url", limit: 255
    t.string "github_url", limit: 255
    t.string "deviantart_url", limit: 255
    t.string "flickr_url", limit: 255
    t.string "instagram_url", limit: 255
    t.string "pinterest_url", limit: 255
    t.string "vimeo_url", limit: 255
    t.string "imdb_url", limit: 255
    t.string "youtube_url", limit: 255
    t.string "steam_url", limit: 255
    t.string "medium_url", limit: 255
    t.string "tumblr_url", limit: 255
    t.string "blogger_url", limit: 255
    t.string "wordpress_url", limit: 255
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
  end

  create_table "timelines", force: :cascade do |t|
    t.integer "user_id"
    t.integer "month"
    t.integer "year"
    t.string "title", limit: 255
    t.text "body"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.boolean "approved"
    t.string "game", limit: 16
    t.string "kind", limit: 16
  end

  create_table "user_infos", force: :cascade do |t|
    t.integer "user_id"
    t.string "handle", limit: 255
    t.string "name", limit: 255
    t.string "other_handles", limit: 255
    t.string "squadron", limit: 255
    t.string "city", limit: 255
    t.string "state", limit: 255
    t.string "country", limit: 255
    t.text "message"
    t.string "planes", limit: 255
    t.string "aw_cpid", limit: 16
    t.string "wb_cpid", limit: 16
    t.string "ah_cpid", limit: 16
    t.string "aw_country", limit: 255
    t.string "wb_country", limit: 255
    t.string "ah_country", limit: 255
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "year_started"
    t.string "icon", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.string "confirmation_token", limit: 255
    t.datetime "confirmed_at", precision: nil
    t.datetime "confirmation_sent_at", precision: nil
    t.string "unconfirmed_email", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token", limit: 255
    t.datetime "locked_at", precision: nil
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "forum_name"
    t.boolean "forum_admin", default: false
    t.boolean "forum_mod", default: false
    t.string "role"
    t.boolean "rip", default: false
    t.date "rip_date"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "forum_posts", "forum_threads"
  add_foreign_key "forum_posts", "users"
  add_foreign_key "forum_subscriptions", "forum_threads"
  add_foreign_key "forum_subscriptions", "users"
  add_foreign_key "forum_threads", "forum_categories"
  add_foreign_key "forum_threads", "users"
end
