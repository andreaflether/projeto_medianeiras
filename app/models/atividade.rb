class Atividade < ApplicationRecord
  has_and_belongs_to_many :pessoas
  has_and_belongs_to_many :voluntarios
  has_one_attached :imagem

  # Campos obrigatórios
  validates :nome, presence: true
  validates :qtd_max_alunos, presence: true
  validates :horario, presence: true
  validates :dias_semana, presence: true

  # Campo para definir quais atividades irão aparecer na página "Atividades" com foto
  enum tipo: [ :atividade, :unifametro, :medianeiras ]

  # scope :disponiveis, lambda {
  #   joins(:pessoas).group('atividades_pessoas.pessoa_id')
  #   .having('qtd_max_alunos < count(pessoas.id)')
  # }

end
