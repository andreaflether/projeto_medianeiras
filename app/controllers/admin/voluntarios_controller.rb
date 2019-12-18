class Admin::VoluntariosController < AdminController
  def new
    @title = 'Medianeiras - Cadastrar voluntário'
    @voluntario = Voluntario.new
    @atividades = Atividade.all
  end

  def create
    @voluntario = Voluntario.new(voluntario_params)
    @atividades = Atividade.all

    if @voluntario.save
      redirect_to @voluntario, notice: "Voluntário cadastrado com sucesso!"
    else
      render 'new'
    end
  end

  def update
    @voluntario = Voluntario.find(params[:id])
    @atividades = Atividade.all
    if @voluntario.update(voluntario_params)
      redirect_to @voluntario, notice: "Cadastro atualizado com sucesso."
    else
      render 'edit'
    end
  end

  def edit
    @title = 'Medianeiras - Editar informações de voluntário'
    @voluntario = Voluntario.find(params[:id])
    @atividades = Atividade.all
  end

  def destroy
    @voluntario = Voluntario.find(params[:id])
    @atividades = Atividade.all
    @voluntario.destroy

    redirect_to voluntarios_path, notice: 'Voluntário apagado com sucesso.'
  end

  def index
    @title = 'Medianeiras - Voluntários'
    @voluntarios = Voluntario.order("nome").page(params[:page]).per(10)
    @atividades = Atividade.all
  end

  def show
    @title = 'Medianeiras - Informações de voluntário'
    @voluntario = Voluntario.find(params[:id])
  end

  private

  def voluntario_params
    params.require(:voluntario).permit(:nome, :dt_entrada, :dt_saida, :email, :telefone, :dt_nascimento, :escolaridade,
    :presenca, :especializacao, :identidade, atividade_ids: [])
  end
end
