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

ActiveRecord::Schema.define(version: 2019_10_30_203821) do

  create_table "atividades", force: :cascade do |t|
    t.string "nome"
    t.string "professor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "horario"
    t.string "dias_semana"
  end

  create_table "atividades_pessoas", id: false, force: :cascade do |t|
    t.integer "atividade_id", null: false
    t.integer "pessoa_id", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string "nome"
    t.date "data"
    t.string "hora"
    t.string "local"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mensagems", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.integer "assunto" 
    t.string "numero"
    t.text "mensagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.integer "idade"
    t.date "dt_nascimento"
    t.string "endereco"
    t.string "bairro"
    t.string "telefone"
    t.string "religiao"
    t.string "responsavel"
    t.date "dt_entrada"
    t.boolean "estuda"
    t.string "escola"
    t.string "serie"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "voluntarios", force: :cascade do |t|
    t.string "nome"
    t.date "dt_entrada"
    t.date "dt_saida"
    t.string "telefone"
    t.string "email"
    t.string "identidade"
    t.date "dt_nascimento"
    t.string "escolaridade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "presenca"
  end

end
