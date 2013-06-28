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

ActiveRecord::Schema.define(:version => 20130628014540) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "characters", :force => true do |t|
    t.integer  "seed_id",                   :null => false
    t.string   "name"
    t.integer  "touch_id",                  :null => false
    t.string   "default"
    t.integer  "length"
    t.integer  "sort_no",    :default => 0, :null => false
    t.datetime "deleted_at"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "characters", ["seed_id"], :name => "index_characters_on_seed_id"
  add_index "characters", ["touch_id"], :name => "index_characters_on_touch_id"

  create_table "links", :force => true do |t|
    t.integer  "node_id",                              :null => false
    t.integer  "linked_id",                            :null => false
    t.string   "type",       :default => "belongs_to", :null => false
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "links", ["node_id", "linked_id"], :name => "index_links_on_node_id_and_linked_id", :unique => true

  create_table "nodes", :force => true do |t|
    t.integer  "seed_id",    :null => false
    t.string   "name"
    t.datetime "deleted_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "nodes", ["seed_id"], :name => "index_nodes_on_seed_id"

  create_table "relations", :force => true do |t|
    t.integer  "seed_id",                              :null => false
    t.integer  "related_id",                           :null => false
    t.string   "type",       :default => "belongs_to", :null => false
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "relations", ["seed_id", "related_id"], :name => "index_relations_on_seed_id_and_related_id", :unique => true

  create_table "seeds", :force => true do |t|
    t.string   "name"
    t.integer  "sort_no",    :default => 0, :null => false
    t.datetime "deleted_at"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "shapes", :force => true do |t|
    t.integer  "node_id",      :null => false
    t.integer  "character_id", :null => false
    t.string   "value"
    t.string   "display"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "shapes", ["character_id"], :name => "index_shapes_on_character_id"
  add_index "shapes", ["node_id"], :name => "index_shapes_on_node_id"

  create_table "touches", :force => true do |t|
    t.string   "name"
    t.integer  "decimal_place"
    t.string   "html"
    t.string   "source_sql"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
