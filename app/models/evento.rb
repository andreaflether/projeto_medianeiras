class Evento < ApplicationRecord
  alias_attribute :start_time, :data
  
  validates :nome, presence: true
  validates :hora, presence: true
  validates :local, presence: true

  scope :proximos_eventos, lambda {
    where(data: Date.today..Date.today.end_of_month)
  }

end
