class RemoveIrrelevantColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :atividades, :professor, :string
    drop_table :mensagems
    remove_column :pessoas, :string, :string
    remove_column :users, :situacao, :boolean
  end
end
