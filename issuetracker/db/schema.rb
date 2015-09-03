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

ActiveRecord::Schema.define(version: 20150901105341) do

  create_table "issues", force: :cascade do |t|
    t.text     "title"
    t.integer  "createdby"
    t.integer  "assignee"
    t.integer  "votes"
    t.text     "milestone"
    t.string   "status"
    t.text     "description"
    t.boolean  "setting"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "issues", ["project_id"], name: "index_issues_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "owner"
    t.boolean  "setting"
    t.text     "members"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "upvotes", force: :cascade do |t|
    t.integer  "issues_id"
    t.integer  "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "upvotes", ["issues_id"], name: "index_upvotes_on_issues_id"
  add_index "upvotes", ["users_id"], name: "index_upvotes_on_users_id"

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end
