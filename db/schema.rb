# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_31_150435) do

  create_table "private_messages", force: :cascade do |t|
    t.string "author"
    t.string "receiver"
    t.string "hidden_content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author"], name: "index_private_messages_on_author"
    t.index ["receiver"], name: "index_private_messages_on_receiver"
  end

  create_table "signed_messages", force: :cascade do |t|
    t.string "author"
    t.string "receiver"
    t.string "content"
    t.string "sig"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author"], name: "index_signed_messages_on_author"
    t.index ["receiver"], name: "index_signed_messages_on_receiver"
  end

end
