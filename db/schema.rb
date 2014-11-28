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

ActiveRecord::Schema.define(version: 20141128223811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: true do |t|
    t.string   "fecha"
    t.string   "linkMD"
    t.integer  "publicacion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre"
  end

  add_index "entries", ["publicacion_id"], name: "index_entries_on_publicacion_id", using: :btree

  create_table "expositors", force: true do |t|
    t.string   "nombre"
    t.integer  "publicacion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "expositors", ["publicacion_id"], name: "index_expositors_on_publicacion_id", using: :btree

  create_table "publicacions", force: true do |t|
    t.string   "nombre"
    t.string   "year"
    t.string   "semestre"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publicacions", ["section_id"], name: "index_publicacions_on_section_id", using: :btree

  create_table "sections", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
