class CreateVoluntarios < ActiveRecord::Migration[5.2]
  def change
    create_table :voluntarios do |t|
      t.string :nome
      t.date :dt_entrada
      t.date :dt_saida
      t.string :telefone
      t.string :email
      t.string :identidade
      t.date :dt_nascimento
      t.string :escolaridade

      t.timestamps
    end
  end
end
