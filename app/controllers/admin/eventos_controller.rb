class Admin::EventosController < AdminController

  def index
    @eventos = Evento.all
    #@eventos = Evento.all.order("created_at DESC")
  end

  def new
    @title = 'Admin - Criar Evento'
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

  def listagem
    @title = 'Admin - Listagem'
    #@eventos = Evento.all.order("created_at ASC")
    @proximos_eventos = Evento.proximos_eventos
  end

  def calendario
    @title = 'Admin - Calendário'
    @eventos = Evento.all
  end

  def show
    @title = 'Admin - Mostrar Evento'
    @evento = Evento.find(params[:id])
  end

  def update
    @evento = Evento.find(params[:id])

    if @evento.update(evento_params)
      redirect_to @evento
    else
      render 'edit'
    end
  end

  def edit
    @title = 'Admin - Editar Evento'
    @evento = Evento.find(params[:id])
  end

  def destroy
    @evento = Evento.find(params[:id])
    @evento.destroy

    redirect_to eventos_path
  end

  private

  def evento_params
    params.require(:evento).permit(:nome, :data, :hora, :local, :descricao)
  end

end
