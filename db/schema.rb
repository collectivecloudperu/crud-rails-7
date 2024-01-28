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

ActiveRecord::Schema[7.1].define(version: 2024_01_25_003403) do
  create_table "empleados", id: :integer, charset: "utf8mb4", collation: "utf8mb4_general_ci", force: :cascade do |t|
    t.string "dni", limit: 25, null: false
    t.string "nombre", limit: 25, null: false
    t.string "direccion", limit: 25, null: false
    t.string "area", limit: 25, null: false
    t.text "descripcion", size: :long, null: false
    t.index ["dni"], name: "nim", unique: true
  end

  create_table "postres", charset: "latin1", collation: "latin1_swedish_ci", force: :cascade do |t|
    t.string "nombre"
    t.string "precio"
    t.string "stock"
    t.string "img"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

end
