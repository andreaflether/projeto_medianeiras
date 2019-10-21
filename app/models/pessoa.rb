class Pessoa < ApplicationRecord
  has_and_belongs_to_many :atividades

  def form_estuda
    estuda ? "Sim" : "Não"
  end
end
