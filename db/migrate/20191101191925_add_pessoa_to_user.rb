class AddPessoaToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :pessoa, foreign_key: true
    add_column :users, :situacao, :boolean
  end
end
