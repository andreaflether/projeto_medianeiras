class CreateJoinTableAtividadesPessoas < ActiveRecord::Migration[5.2]
  def change
    create_join_table :atividades, :pessoas do |t|
      # t.index [:atividade_id, :pessoa_id]
      # t.index [:pessoa_id, :atividade_id]
    end
  end
end
