class Voluntario < ApplicationRecord
  has_and_belongs_to_many :atividades

  validates :nome, presence: true
  validates :dt_nascimento, presence: true
  validates :escolaridade, presence: true

  def form_presente
    presenca ? "Sim" : "Não"
  end

  scope :proximos_aniversarios_v, lambda {
    select { |x| x.dt_nascimento&.month.to_i == Date.today.month && x.dt_nascimento&.day.to_i - 2 <= Date.today.day }
  }

end
