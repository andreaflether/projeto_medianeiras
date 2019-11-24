class PagesController < ApplicationController

  def eventos
    @eventos = Evento.all
    @proximos_eventos = Evento.proximos_eventos
  end

  def home
    @eventos = Evento.all
    @proximos_eventos = Evento.proximos_eventos
  end

  def atividades
    @atividades = Atividade.where(tipo: "atividade")
    @voluntarios = Voluntario.all
    @pessoas = Pessoa.all
  end

end
