class CreateAtividades < ActiveRecord::Migration[5.2]
  def change
    create_table :atividades do |t|
      t.string :nome
      t.string :professor

      t.timestamps
    end
  end
end
