class Admin::AtividadesController < AdminController
  def new
    @atividade = Atividade.new
  end

  def create
    @atividade = Atividade.new(atividade_params)


    if @atividade.save
      redirect_to @atividade, notice: "Atividade criada com sucesso!"
    else
      render 'new'
    end

  end

  def update
    @atividade = Atividade.find(params[:id])
    if @atividade.update(atividade_params)
      redirect_to @atividade, notice: "Atividade atualizada com sucesso."
    else
      render 'edit'
    end
  end

  def edit
    @atividade = Atividade.find(params[:id])
  end

  def destroy
    @atividade = Atividade.find(params[:id])
    @atividade.destroy

    redirect_to atividades_path, notice: 'Atividade apagada com sucesso.'
  end

  def index
    @pessoas = Pessoa.all
    @atividades = Atividade.all
  end

  def show
    @atividade = Atividade.find(params[:id])
  end

  private

  def atividade_params
    params.require(:atividade).permit(:nome, :professor, :horario, :dias_semana, pessoa_ids: [])
  end

  def authorize
    unless current_user.admin?
      redirect_to root_path
      return
    end
  end

end
