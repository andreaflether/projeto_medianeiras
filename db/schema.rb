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

ActiveRecord::Schema.define(version: 2019_12_01_234056) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "atividades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "horario"
    t.string "dias_semana"
    t.integer "qtd_max_alunos"
    t.integer "tipo"
    t.text "descricao"
  end

  create_table "atividades_pessoas", id: false, force: :cascade do |t|
    t.integer "atividade_id", null: false
    t.integer "pessoa_id", null: false
  end

  create_table "atividades_voluntarios", id: false, force: :cascade do |t|
    t.integer "atividade_id", null: false
    t.integer "voluntario_id", null: false
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
    t.string "especializacao"
  end

end
