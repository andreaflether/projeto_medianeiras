ActiveRecord::Schema.define(version: 2019_11_07_182442) do

  create_table "atividades", force: :cascade do |t|
    t.string "nome"
    t.string "professor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "horario"
    t.string "dias_semana"
    t.integer "qtd_max_alunos"
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
    t.boolean "situacao"
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
