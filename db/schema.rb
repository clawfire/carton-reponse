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

ActiveRecord::Schema.define(:version => 20101121183808) do

  create_table "campagnes", :force => true do |t|
    t.string   "title",      :null => false
    t.datetime "date",       :null => false
    t.string   "gps"
    t.string   "adress"
    t.text     "text"
    t.string   "file"
    t.string   "limit",      :null => false
    t.string   "response",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.integer "user_id"
    t.string  "display_name", :null => false
    t.string  "firstname"
    t.string  "lastname"
    t.string  "company"
    t.string  "adress"
    t.string  "zipcode"
    t.string  "city"
    t.string  "land"
    t.string  "phone"
    t.string  "tva_number"
    t.integer "plan_id"
  end

  create_table "guests", :force => true do |t|
    t.string   "firstname",                     :null => false
    t.string   "lastname",                      :null => false
    t.string   "email",                         :null => false
    t.string   "phone"
    t.boolean  "did_come",   :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paiements", :force => true do |t|
    t.string   "method",     :null => false
    t.integer  "plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", :force => true do |t|
    t.string   "title",                      :null => false
    t.integer  "price",       :default => 0, :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                                          :null => false
    t.string   "email",                                          :null => false
    t.string   "password_hash", :limit => 64,                    :null => false
    t.string   "password_salt", :limit => 32,                    :null => false
    t.boolean  "privilegied",                 :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
