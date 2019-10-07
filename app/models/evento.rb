class Evento < ApplicationRecord
  alias_attribute :start_time, :data
  scope :proximos_eventos, lambda {
    where(data: Date.today..Date.today.end_of_month)
  }

end
