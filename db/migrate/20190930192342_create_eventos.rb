class CreateEventos < ActiveRecord::Migration[5.2]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.date :data
      t.string :hora
      t.string :local
      t.text :descricao

      t.timestamps
    end
  end
end
