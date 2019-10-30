class AddPresencaToVoluntarios < ActiveRecord::Migration[5.2]
  def change
    add_column :voluntarios, :presenca, :boolean
  end
end
