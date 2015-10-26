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

ActiveRecord::Schema.define(version: 20151026033541) do

  create_table "address_members", force: :cascade do |t|
    t.string   "description",            limit: 50
    t.string   "street_number",          limit: 10
    t.string   "additional_information", limit: 255
    t.integer  "address_id",             limit: 4
    t.integer  "member_id",              limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "address_members", ["address_id"], name: "index_address_members_on_address_id", using: :btree
  add_index "address_members", ["member_id"], name: "index_address_members_on_member_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.string   "zip_code",    limit: 8
    t.string   "street_name", limit: 255
    t.string   "city",        limit: 255
    t.string   "state",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "attendances", force: :cascade do |t|
    t.integer  "meeting_id", limit: 4
    t.integer  "member_id",  limit: 4
    t.boolean  "attendee"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "attendances", ["meeting_id"], name: "index_attendances_on_meeting_id", using: :btree
  add_index "attendances", ["member_id"], name: "index_attendances_on_member_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "description", limit: 255
    t.string   "type",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "contacts_members", id: false, force: :cascade do |t|
    t.integer "contact_id", limit: 4, null: false
    t.integer "member_id",  limit: 4, null: false
  end

  add_index "contacts_members", ["contact_id"], name: "fk_rails_aef47270ad", using: :btree
  add_index "contacts_members", ["member_id"], name: "fk_rails_78e9e897f7", using: :btree

  create_table "contacts_parents", id: false, force: :cascade do |t|
    t.integer "contact_id", limit: 4, null: false
    t.integer "parent_id",  limit: 4, null: false
  end

  add_index "contacts_parents", ["contact_id"], name: "fk_rails_6f91ef37d0", using: :btree
  add_index "contacts_parents", ["parent_id"], name: "fk_rails_dc92d52b6a", using: :btree

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kinships", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "localities", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string   "description", limit: 255
    t.date     "date"
    t.time     "start_at"
    t.time     "end_at"
    t.string   "location",    limit: 255
    t.integer  "group_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "meetings", ["group_id"], name: "index_meetings_on_group_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.string   "name",        limit: 255
    t.date     "birthdate"
    t.string   "status",      limit: 255
    t.integer  "locality_id", limit: 4
    t.integer  "group_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "members", ["group_id"], name: "index_members_on_group_id", using: :btree
  add_index "members", ["locality_id"], name: "index_members_on_locality_id", using: :btree

  create_table "members_parents", id: false, force: :cascade do |t|
    t.integer "member_id", limit: 4, null: false
    t.integer "parent_id", limit: 4, null: false
  end

  add_index "members_parents", ["member_id"], name: "fk_rails_1aa55e42b4", using: :btree
  add_index "members_parents", ["parent_id"], name: "fk_rails_a273a8b22d", using: :btree

  create_table "parents", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "kinship_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "parents", ["kinship_id"], name: "index_parents_on_kinship_id", using: :btree

  add_foreign_key "address_members", "addresses"
  add_foreign_key "address_members", "members"
  add_foreign_key "attendances", "meetings"
  add_foreign_key "attendances", "members"
  add_foreign_key "contacts_members", "contacts"
  add_foreign_key "contacts_members", "members"
  add_foreign_key "contacts_parents", "contacts"
  add_foreign_key "contacts_parents", "parents"
  add_foreign_key "meetings", "groups"
  add_foreign_key "members", "groups"
  add_foreign_key "members", "localities"
  add_foreign_key "members_parents", "members"
  add_foreign_key "members_parents", "parents"
  add_foreign_key "parents", "kinships"
end
