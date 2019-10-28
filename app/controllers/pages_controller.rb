class PagesController < ApplicationController

  def eventos
    @eventos = Evento.all
    @proximos_eventos = Evento.proximos_eventos
  end

  def home
    @eventos = Evento.all
    @proximos_eventos = Evento.proximos_eventos
  end

end
