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

ActiveRecord::Schema.define(version: 0) do

  create_table "ZAPPLICATION", primary_key: "Z_PK", force: :cascade do |t|
    t.integer  "Z_ENT"
    t.integer  "Z_OPT"
    t.datetime "ZENDDATE"
    t.datetime "ZSTARTDATE"
    t.string   "ZBUNDLEID"
    t.string   "ZDISPNAME"
    t.string   "ZPATH"
  end

  create_table "ZBLOCKEDWEBSITE", primary_key: "Z_PK", force: :cascade do |t|
    t.integer  "Z_ENT"
    t.integer  "Z_OPT"
    t.datetime "ZDATE"
    t.string   "ZPAGEADDRESS"
    t.string   "ZPAGETITLE"
  end

  create_table "ZCHAT", primary_key: "Z_PK", force: :cascade do |t|
    t.integer  "Z_ENT"
    t.integer  "Z_OPT"
    t.datetime "ZDATE"
    t.string   "ZFILEPATH"
    t.string   "ZPARTICIPANTIMADDRESS"
    t.string   "ZPARTICIPANTNAME"
    t.binary   "ZFILEDATA"
  end

  create_table "ZWEBSITE", primary_key: "Z_PK", force: :cascade do |t|
    t.integer  "Z_ENT"
    t.integer  "Z_OPT"
    t.datetime "ZDATE"
    t.string   "ZPAGEADDRESS"
    t.string   "ZPAGETITLE"
  end

  create_table "Z_METADATA", primary_key: "Z_VERSION", force: :cascade do |t|
    t.string "Z_UUID",  limit: 255
    t.binary "Z_PLIST"
  end

  create_table "Z_MODELCACHE", id: false, force: :cascade do |t|
    t.binary "Z_CONTENT"
  end

  create_table "Z_PRIMARYKEY", primary_key: "Z_ENT", force: :cascade do |t|
    t.string  "Z_NAME"
    t.integer "Z_SUPER"
    t.integer "Z_MAX"
  end

end
