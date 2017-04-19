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

ActiveRecord::Schema.define(version: 20170418174418) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "text",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "authors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "author_id"
    t.string   "name"
    t.datetime "published_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["author_id"], name: "index_books_on_author_id", using: :btree
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "add"
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "lname"
    t.string   "mname"
    t.string   "fname"
    t.date     "dob"
    t.text     "add",        limit: 65535
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "logins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "num"
    t.string   "callable_type"
    t.integer  "callable_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["callable_type", "callable_id"], name: "index_phones_on_callable_type_and_callable_id", using: :btree
  end

  create_table "stocks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "date"
    t.text     "description", limit: 65535
    t.integer  "units"
    t.integer  "price"
    t.integer  "customer_id"
    t.integer  "company_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["company_id"], name: "index_stocks_on_company_id", using: :btree
    t.index ["customer_id"], name: "index_stocks_on_customer_id", using: :btree
  end

  create_table "tweets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
