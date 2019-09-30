class Admin::EventosController < ApplicationController

  def novo
    @evento = Evento.new
  end

  def criar
    @evento = Evento.new(evento_params)

    if @evento.save
      #redirect_to @evento
    else
      render 'criar'
    end
  end

  private

  def evento_params
    params.permit(:evento).permit(:nome, :data, :hora, :local, :descricao)
  end

end
