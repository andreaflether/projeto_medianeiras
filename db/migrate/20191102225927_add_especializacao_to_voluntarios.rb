class AddEspecializacaoToVoluntarios < ActiveRecord::Migration[5.2]
  def change
    add_column :voluntarios, :especializacao, :string
  end
end
