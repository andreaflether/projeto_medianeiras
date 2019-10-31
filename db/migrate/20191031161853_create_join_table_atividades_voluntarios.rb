class CreateJoinTableAtividadesVoluntarios < ActiveRecord::Migration[5.2]
  def change
    create_join_table :atividades, :voluntarios do |t|
      # t.index [:atividade_id, :voluntario_id]
      # t.index [:voluntario_id, :atividade_id]
    end
  end
end
