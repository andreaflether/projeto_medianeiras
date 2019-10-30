class ChangeDtNascimentoToDate < ActiveRecord::Migration[5.2]
  def change
    change_column :voluntarios, :dt_nascimento, :date
  end
end
