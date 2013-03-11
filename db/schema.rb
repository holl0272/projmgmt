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

ActiveRecord::Schema.define(:version => 20130309041249) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.float    "latitude",                   :default => 0.0
    t.float    "longitude",                  :default => 0.0
    t.string   "primary_name"
    t.string   "primary_email"
    t.integer  "primary_phone", :limit => 8
    t.string   "second_name"
    t.string   "second_email"
    t.integer  "second_phone",  :limit => 8
    t.text     "note"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "clients_users", :id => false, :force => true do |t|
    t.integer "client_id"
    t.integer "user_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "job_num"
    t.date     "deadline"
    t.text     "description"
    t.boolean  "is_complete", :default => false
    t.integer  "client_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "phone",           :limit => 8
    t.text     "address"
    t.integer  "ssn",             :limit => 8
    t.text     "image"
    t.text     "note"
    t.boolean  "is_admin",                     :default => false
    t.boolean  "is_pm",                        :default => false
    t.boolean  "is_design",                    :default => false
    t.boolean  "is_dev",                       :default => false
    t.boolean  "is_photo",                     :default => false
    t.boolean  "is_write",                     :default => false
    t.string   "password_digest"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

end
