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

ActiveRecord::Schema.define(version: 20170111123127) do

  create_table "notes", force: :cascade do |t|
    t.text    "m_datetime", limit: 19,  default: "1970-01-01 00:00:00", null: false
    t.integer "sys",                    default: 0,                     null: false
    t.integer "dia",                    default: 0,                     null: false
    t.integer "pulse",                  default: 0,                     null: false
    t.text    "artm",       limit: 1,   default: "N",                   null: false
    t.integer "num",                    default: 1,                     null: false
    t.text    "feeling",    limit: 1,   default: "U",                   null: false
    t.text    "cmt",        limit: 100
  end

end
