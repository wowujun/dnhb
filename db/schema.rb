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

ActiveRecord::Schema.define(version: 20160111034341) do

  create_table "admins", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "password_digest", limit: 255
    t.string   "content",         limit: 255
    t.integer  "status",          limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "advertisements", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "content",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "avatar",     limit: 255
  end

  create_table "clas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "keywords",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "classcas", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "image",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "time"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "kindeditor_assets", force: :cascade do |t|
    t.string   "asset",      limit: 255
    t.integer  "file_size",  limit: 4
    t.string   "file_type",  limit: 255
    t.integer  "owner_id",   limit: 4
    t.string   "asset_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sideabouts", force: :cascade do |t|
    t.text     "about",         limit: 65535
    t.text     "culture",       limit: 65535
    t.text     "qualification", limit: 65535
    t.text     "concept",       limit: 65535
    t.text     "speech",        limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "sidecfgs", force: :cascade do |t|
    t.string   "company",    limit: 255
    t.string   "tel",        limit: 255
    t.string   "fax",        limit: 255
    t.string   "address",    limit: 255
    t.string   "dingyuhao",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "image",      limit: 255
    t.string   "hotline",    limit: 255
  end

  create_table "sideclas", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sidecontents", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "date"
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "sideproducts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "image",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "sidecla_id", limit: 4
    t.integer  "cla_id",     limit: 4
  end

end
