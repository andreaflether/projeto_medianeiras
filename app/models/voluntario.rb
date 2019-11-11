class Voluntario < ApplicationRecord
  has_and_belongs_to_many :atividades

  def form_presente
    presenca ? "Sim" : "Não"
  end

end
