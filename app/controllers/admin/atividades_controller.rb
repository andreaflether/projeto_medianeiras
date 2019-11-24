class Admin::AtividadesController < AdminController
  def new
    @atividade = Atividade.new
    @voluntarios = Voluntario.all
  end

  def create
    @atividade = Atividade.new(atividade_params)
    @voluntarios = Voluntario.all

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
    @voluntarios = Voluntario.all
  end

  def destroy
    @atividade = Atividade.find(params[:id])
    @atividade.destroy

    redirect_to atividades_path, notice: 'Atividade apagada com sucesso.'
  end

  def index
    @pessoas = Pessoa.order("nome").page(params[:page]).per(5)
    @atividades = Atividade.all
    @voluntarios = Voluntario.all
  end

  def show
    @atividade = Atividade.find(params[:id])
    @voluntarios = Voluntario.all
  end

  private

  def atividade_params
    params.require(:atividade).permit(:nome, :qtd_max_alunos, :professor, :horario, :dias_semana, :tipo, :link_imagem, :descricao, pessoa_ids: [],
      voluntario_ids: [])
  end
end
