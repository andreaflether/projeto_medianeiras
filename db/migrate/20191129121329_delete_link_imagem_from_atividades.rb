class DeleteLinkImagemFromAtividades < ActiveRecord::Migration[5.2]
  def change
    remove_column :atividades, :link_imagem, :string
  end
end
