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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130606162022) do

  create_table "blobs", :force => true do |t|
    t.text     "checksum",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "data"
  end

  add_index "blobs", ["checksum"], :name => "index_blobs_on_checksum", :unique => true

  create_table "data_sources", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "export_records", :force => true do |t|
    t.integer  "data_source_id", :null => false
    t.string   "primary_key",    :null => false
    t.string   "checksum",       :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "export_run_id"
    t.integer  "record_size"
  end

  create_table "export_runs", :force => true do |t|
    t.integer  "data_source_id"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.integer  "record_count"
    t.integer  "duration"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
