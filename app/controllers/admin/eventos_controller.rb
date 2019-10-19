class Admin::EventosController < AdminController
  before_action :authorize
  layout 'menu_admin'

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
      redirect_to @evento, notice: 'Evento criado com sucesso!'
    else
      render 'new', alert: 'Erro ao criar evento. Tente novamente.'
    end
  end

  def proximos_eventos
    @title = 'Admin - Próximos Eventos'
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
      # redirect_to @evento
      redirect_to @evento, notice: 'Evento atualizado com sucesso.'
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

    redirect_to eventos_path, notice: 'Evento apagado com sucesso.'
  end

  private

  def evento_params
    params.require(:evento).permit(:nome, :data, :hora, :local, :descricao)
  end

  def authorize
    unless current_user.admin?
      redirect_to root_path
      return
    end
  end
end
