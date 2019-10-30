class CreateMensagems < ActiveRecord::Migration[5.2]
  def change
    create_table :mensagems do |t|
      t.string :nome
      t.string :email
      t.integer :assunto
      t.string :numero
      t.text :mensagem

      t.timestamps
    end
  end
end
