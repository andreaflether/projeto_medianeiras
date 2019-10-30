class Mensagem < ApplicationRecord
  enum assunto: [ :voluntario, :parceria ]
end
