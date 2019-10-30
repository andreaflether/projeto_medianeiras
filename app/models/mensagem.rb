class Mensagem < ApplicationRecord
  enum :assunto ['Voluntariar', 'Parceria' ]
end
