class PagesController < ApplicationController
  def home
  end

  def eventos
    @eventos = Evento.all
    @proximos_eventos = Evento.proximos_eventos
  end

  # def proximos_eventos
  #   @eventos = Evento.all
  #   #@eventos = Evento.all.order("created_at ASC")
  #   @proximos_eventos = Evento.proximos_eventos
  # end

end
