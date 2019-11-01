class ChangeAtividadesTable < ActiveRecord::Migration[5.2]
  def change
    add_column :atividades, :qtd_max_alunos, :integer
  end
end
