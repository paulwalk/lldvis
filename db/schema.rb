# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101024173954) do

  create_table "topicclusters", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "note"
    t.integer  "topiccluster_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics_usecases", :id => false, :force => true do |t|
    t.integer "topic_id"
    t.integer "usecase_id"
  end

  create_table "usages", :force => true do |t|
    t.string   "description"
    t.text     "note"
    t.integer  "vocab_id"
    t.integer  "usecase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usecaseclusters", :force => true do |t|
    t.string   "name"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usecases", :force => true do |t|
    t.string   "name"
    t.text     "goal"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vocabs", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "note"
    t.integer  "vocabtype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vocabtypes", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
