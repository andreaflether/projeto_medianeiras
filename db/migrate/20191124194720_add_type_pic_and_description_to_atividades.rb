class AddTypePicAndDescriptionToAtividades < ActiveRecord::Migration[5.2]
  def change
    add_column :atividades, :tipo, :integer
    add_column :atividades, :descricao, :text
    add_column :atividades, :link_imagem, :string
  end
end
