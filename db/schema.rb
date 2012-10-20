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

ActiveRecord::Schema.define(:version => 20121020030500) do

  create_table "availabilities", :force => true do |t|
    t.string   "calendar_id"
    t.date     "date"
    t.integer  "user_id"
    t.boolean  "AM12",        :default => false
    t.boolean  "AM1",         :default => false
    t.boolean  "AM2",         :default => false
    t.boolean  "AM3",         :default => false
    t.boolean  "AM4",         :default => false
    t.boolean  "AM5",         :default => false
    t.boolean  "AM6",         :default => false
    t.boolean  "AM7",         :default => false
    t.boolean  "AM8",         :default => false
    t.boolean  "AM9",         :default => false
    t.boolean  "AM10",        :default => false
    t.boolean  "AM11",        :default => false
    t.boolean  "PM12",        :default => false
    t.boolean  "PM1",         :default => false
    t.boolean  "PM2",         :default => false
    t.boolean  "PM3",         :default => false
    t.boolean  "PM4",         :default => false
    t.boolean  "PM5",         :default => false
    t.boolean  "PM6",         :default => false
    t.boolean  "PM7",         :default => false
    t.boolean  "PM8",         :default => false
    t.boolean  "PM9",         :default => false
    t.boolean  "PM10",        :default => false
    t.boolean  "PM11",        :default => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "calendars", :force => true do |t|
    t.string   "eventDescription"
    t.string   "location"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "phoneNumber", :null => false
    t.string   "password"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
