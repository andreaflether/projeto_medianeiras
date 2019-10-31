class Atividade < ApplicationRecord
  has_and_belongs_to_many :pessoas
  has_and_belongs_to_many :voluntarios
end
