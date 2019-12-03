class Admin::EventosController < AdminController
  before_action :authorize
  layout 'menu_admin'

  def index
    @eventos = Evento.order("data").page(params[:page]).per(10)
  end

  def new
    @title = 'Medianeiras - Criar Evento'
    @evento = Evento.new
  end

  def create
    @evento = Evento.new(evento_params)

    if @evento.save
      redirect_to @evento, notice: 'Evento criado com sucesso!'
    else
      render 'new'
    end
  end

  def proximos_eventos
    @title = 'Medianeira - Próximos Eventos'
    @proximos_eventos = Evento.proximos_eventos
  end

  def calendario
    @title = 'Medianeiras - Calendário'
    @eventos = Evento.all
  end

  def show
    @title = 'Medianeiras - Mostrar Evento'
    @evento = Evento.find(params[:id])
  end

  def update
    @evento = Evento.find(params[:id])

    if @evento.update(evento_params)
      redirect_to @evento, notice: 'Evento atualizado com sucesso.'
    else
      render 'edit'
    end
  end

  def edit
    @title = 'Medianeiras - Editar Evento'
    @evento = Evento.find(params[:id])
  end

  def destroy
    @evento = Evento.find(params[:id])
    @evento.destroy

    redirect_to eventos_path, notice: 'Evento apagado com sucesso.'
  end

  private

  def evento_params
    params.require(:evento).permit(:nome, :data, :hora, :local, :descricao)
  end
end
