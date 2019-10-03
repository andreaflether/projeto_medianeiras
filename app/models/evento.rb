class Evento < ApplicationRecord
  scope :proximos_eventos, lambda {
    where(data: Date.today..Date.today.end_of_month)
  }
end
