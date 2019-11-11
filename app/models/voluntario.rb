class Voluntario < ApplicationRecord
  has_and_belongs_to_many :atividades

  validates :nome, presence: true
  validates :dt_nascimento, presence: true
  validates :escolaridade, presence: true

  def form_presente
    presenca ? "Sim" : "Não"
  end

end
