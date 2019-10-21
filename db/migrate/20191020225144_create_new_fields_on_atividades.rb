class CreateNewFieldsOnAtividades < ActiveRecord::Migration[5.2]
  def up
    add_column :atividades, :horario, :string
    add_column :atividades, :dias_semana, :string
  end

  def down
    remove_column :atividades, :horario, :string
    remove_column :atividades, :dias_semana, :string
  end
end
