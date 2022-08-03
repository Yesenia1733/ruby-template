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

ActiveRecord::Schema.define(version: 2022_08_03_013559) do

  create_table "equipment", force: :cascade do |t|
    t.string "modelo"
    t.string "marca"
    t.string "tipo"
    t.string "email"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_equipment_on_user_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
    t.index ["service_id"], name: "index_order_details_on_service_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "date_in"
    t.string "date_out"
    t.integer "total_amount"
    t.integer "status"
    t.integer "equipment_id", null: false
    t.integer "pre_order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equipment_id"], name: "index_orders_on_equipment_id"
    t.index ["pre_order_id"], name: "index_orders_on_pre_order_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pre_order_details", force: :cascade do |t|
    t.integer "pre_order_id", null: false
    t.integer "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pre_order_id"], name: "index_pre_order_details_on_pre_order_id"
    t.index ["service_id"], name: "index_pre_order_details_on_service_id"
  end

  create_table "pre_orders", force: :cascade do |t|
    t.string "fecha"
    t.integer "total_amount"
    t.integer "status"
    t.string "sympton"
    t.integer "equipment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equipment_id"], name: "index_pre_orders_on_equipment_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stages", force: :cascade do |t|
    t.integer "stage"
    t.string "date_in"
    t.string "date_out"
    t.string "stage_description"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warranties", force: :cascade do |t|
    t.string "fecha_in"
    t.string "fecha_out"
    t.string "sympton"
    t.integer "status"
    t.integer "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_warranties_on_order_id"
  end

  add_foreign_key "equipment", "users"
  add_foreign_key "order_details", "orders"
  add_foreign_key "order_details", "services"
  add_foreign_key "orders", "equipment"
  add_foreign_key "orders", "pre_orders"
  add_foreign_key "pre_order_details", "pre_orders"
  add_foreign_key "pre_order_details", "services"
  add_foreign_key "pre_orders", "equipment"
  add_foreign_key "warranties", "orders"
end
