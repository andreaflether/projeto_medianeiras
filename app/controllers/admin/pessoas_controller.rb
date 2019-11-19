class Admin::PessoasController < AdminController

  def new
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
    @pessoa = Pessoa.find(params[:id])
    @atividades = Atividade.all
  end

  def destroy
    @atividade = Atividade.find(params[:atividade_id])
    @pessoa = Pessoa.find(params[:id])
    unless @atividade
      @pessoa.destroy
      redirect_to pessoas_path, notice: 'Cadastro apagado com sucesso.'
    else
      @pessoa.atividades.delete @atividade
      @pessoa.save
      redirect_to atividades_path, notice: 'Pessoa removida com sucesso.'
    end
  end

  def index
    @pessoas = Pessoa.all
    @atividades = Atividade.all
  end

  def show
    @pessoa = Pessoa.find(params[:id])
  end

  def promulher

  end 

  private

  def pessoa_params
    params.require(:pessoa).permit(:nome, :idade, :dt_nascimento, :endereco, :bairro, :telefone, :religiao, :responsavel,
    :dt_entrada, :estuda, :escola, :serie, atividade_ids: [])
  end
end
