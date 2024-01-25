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

ActiveRecord::Schema[7.1].define(version: 2024_01_25_231721) do
  create_table "entregas", force: :cascade do |t|
    t.integer "pedido_id", null: false
    t.text "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_entregas_on_pedido_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer "produto_id", null: false
    t.integer "user_id", null: false
    t.integer "quantidade"
    t.decimal "valor"
    t.boolean "entrega"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_pedidos_on_produto_id"
    t.index ["user_id"], name: "index_pedidos_on_user_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.string "tipo"
    t.text "sabores"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "entregas", "pedidos"
  add_foreign_key "pedidos", "produtos"
  add_foreign_key "pedidos", "users"
end
