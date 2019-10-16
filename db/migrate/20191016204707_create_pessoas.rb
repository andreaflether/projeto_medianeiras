class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.integer :idade
      t.date :dt_nascimento
      t.string :endereco
      t.string :bairro
      t.string :telefone
      t.string :religiao
      t.string :responsavel
      t.date :dt_entrada
      t.boolean :estuda
      t.string :escola
      t.string :serie
      t.string :string

      t.timestamps
    end
  end
end
