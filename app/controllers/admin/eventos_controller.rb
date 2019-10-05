class Admin::EventosController < ApplicationController

  def index
    @eventos = Evento.all
    #@eventos = Evento.all.order("created_at DESC")
  end

  def new
    @evento = Evento.new
  end

  def create
    @evento = Evento.new(evento_params)

    if @evento.save
      redirect_to @evento
    else
      render 'new'
    end
  end

  def show
    @evento = Evento.find(params[:id])
  end

  def listagem
    #@eventos = Evento.all.order("created_at ASC")
    @proximos_eventos = Evento.proximos_eventos
  end


  private

  def evento_params
    params.require(:evento).permit(:nome, :data, :hora, :local, :descricao)
  end

end
