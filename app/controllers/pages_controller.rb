class PagesController < ApplicationController

  def eventos
    @title = 'Medianeiras - Eventos'
    @eventos = Evento.all
    @proximos_eventos = Evento.proximos_eventos
  end

  def home
    @eventos = Evento.all
    @proximos_eventos = Evento.proximos_eventos
  end

  def atividades
    @title = 'Medianeiras - Atividades'
    @atividades = Atividade.where(tipo: "atividade")
    @voluntarios = Voluntario.all
    @pessoas = Pessoa.all
  end

  def sobre
    @title = 'Medianeiras - Sobre Nós'
  end

  def projetos
    @title = 'Medianeiras - Projetos'
  end
end
