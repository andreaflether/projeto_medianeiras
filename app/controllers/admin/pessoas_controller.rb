class Admin::PessoasController < AdminController

  def new
    @title = 'Medianeiras - Cadastrar Pessoa'
    @pessoa = Pessoa.new
    @pessoa.atividade_ids = [params[:atividade_id].to_i] if params[:atividade_id]
    @atividades = Atividade.all
    @pessoas_atividades = Pessoa.includes(:atividades).all.count
  end

  def create
    @pessoa = Pessoa.new(pessoa_params)
    @atividades = Atividade.all
    @pessoas_atividades = Pessoa.includes(:atividades).all.count

    if @pessoa.save
      redirect_to @pessoa, notice: "Cadastro realizado com sucesso!"

    else
      render 'new'
    end
  end

  def update
    @pessoa = Pessoa.find(params[:id])
    @atividades = Atividade.all
    if @pessoa.update(pessoa_params)
      redirect_to @pessoa, notice: "Cadastro atualizado com sucesso."
    else
      render 'edit'
    end
  end

  def edit
    @title = 'Medianeiras - Editar informações de pessoa'
    @pessoa = Pessoa.find(params[:id])
    @atividades = Atividade.all
  end

  def destroy
    @pessoa = Pessoa.find(params[:id])
    # @pessoa.atividade_ids = [params[:atividade_id].to_i] if params[:atividade_id]
    @atividade = Atividade.find(params[:atividade_id]) if params[:atividade_id]
    unless @atividade
      @pessoa.destroy
      redirect_to pessoas_path, notice: "Cadastro apagado com sucesso."
    else
      @pessoa.atividades.delete @atividade
      @pessoa.save
      redirect_to atividades_path, notice: 'Pessoa removida com sucesso.'
    end
  end

  def index
    @title = 'Medianeiras - Cadastros de Pessoa'
    @pessoas = Pessoa.all
    @atividades = Atividade.all
  end

  def show
    @title = 'Medianeiras - Informações de Cadastro'
    @pessoa = Pessoa.find(params[:id])
  end

  def promulher
    @title = 'Medianeiras - Promulher '
  end

  private

  def pessoa_params
    params.require(:pessoa).permit(:nome, :idade, :dt_nascimento, :endereco, :bairro, :telefone, :religiao, :responsavel,
    :dt_entrada, :estuda, :escola, :serie, atividade_ids: [])
  end
end
