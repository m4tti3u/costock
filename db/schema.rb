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

ActiveRecord::Schema.define(version: 2021_08_25_124355) do

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

  create_table "asks", force: :cascade do |t|
    t.bigint "nft_id", null: false
    t.bigint "user_id", null: false
    t.float "ask_price"
    t.string "progress"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nft_id"], name: "index_asks_on_nft_id"
    t.index ["user_id"], name: "index_asks_on_user_id"
  end

  create_table "bids", force: :cascade do |t|
    t.bigint "nft_id", null: false
    t.bigint "user_id", null: false
    t.float "bid_price"
    t.string "progress"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nft_id"], name: "index_bids_on_nft_id"
    t.index ["user_id"], name: "index_bids_on_user_id"
  end

  create_table "collectibles", force: :cascade do |t|
    t.string "category"
    t.string "brand"
    t.string "model"
    t.string "reference"
    t.float "retail_price"
    t.float "resell_value"
    t.string "description"
    t.bigint "user_id", null: false
    t.integer "nft_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_collectibles_on_user_id"
  end

  create_table "collectibles_spiders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nfts", force: :cascade do |t|
    t.bigint "collectible_id", null: false
    t.float "introduction_price"
    t.float "current_price"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collectible_id"], name: "index_nfts_on_collectible_id"
    t.index ["user_id"], name: "index_nfts_on_user_id"
  end

  create_table "plots", force: :cascade do |t|
    t.string "name"
    t.bigint "collectible_id", null: false
    t.bigint "scraping_value_id", null: false
    t.string "label"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collectible_id"], name: "index_plots_on_collectible_id"
    t.index ["scraping_value_id"], name: "index_plots_on_scraping_value_id"
  end

  create_table "scraping_values", force: :cascade do |t|
    t.date "date"
    t.float "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "nft_id", null: false
    t.float "acquisition_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nft_id"], name: "index_transactions_on_nft_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "asks", "nfts"
  add_foreign_key "asks", "users"
  add_foreign_key "bids", "nfts"
  add_foreign_key "bids", "users"
  add_foreign_key "collectibles", "users"
  add_foreign_key "nfts", "collectibles"
  add_foreign_key "nfts", "users"
  add_foreign_key "plots", "collectibles"
  add_foreign_key "plots", "scraping_values"
  add_foreign_key "transactions", "nfts"
  add_foreign_key "transactions", "users"
end
