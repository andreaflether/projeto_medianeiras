class Pessoa < ApplicationRecord
  has_and_belongs_to_many :atividades

  validates :nome, presence: true
  validates :dt_nascimento, presence: true
  validates :idade, presence: true
  validates :dt_entrada, presence: true

  def form_estuda
    estuda ? "Sim" : "Não"
  end

  scope :proximos_aniversarios, lambda {
    where(dt_nascimento: 2.days.ago .. 2.days.from_now)
  }
end
