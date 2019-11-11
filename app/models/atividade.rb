class Atividade < ApplicationRecord
  has_and_belongs_to_many :pessoas
  has_and_belongs_to_many :voluntarios

  validates :nome, presence: true
  validates :qtd_max_alunos, presence: true
  validates :professor, presence: true
  validates :horario, presence: true
  validates :dias_semana, presence: true

end
