class Admin::PessoasController < AdminController
  def new
    @pessoa = Pessoa.new
    @atividades = Atividade.all
  end

  def create
    @pessoa = Pessoa.new(pessoa_params)
    @atividades = Atividade.all

    if @pessoa.save
      redirect_to @pessoa, notice: "Cadastro realizado com sucesso!"
    else
      render 'new'
    end

  end

  def update
    @pessoa = Pessoa.find(params[:id])
    if @pessoa.update(pessoa_params)
      redirect_to @pessoa, notice: "Cadastro atualizado com sucesso."
    else
      render 'edit'
    end
  end

  def edit
    @pessoa = Pessoa.find(params[:id])
  end

  def destroy
    @pessoa = Pessoa.find(params[:id])
    @pessoa.destroy

    redirect_to pessoas_path, notice: 'Cadastro apagado com sucesso.'
  end

  def index
    @pessoas = Pessoa.all
    @atividades = Atividade.all
  end

  def show
    @pessoa = Pessoa.find(params[:id])
  end

  private

  def pessoa_params
    params.require(:pessoa).permit(:nome, :idade, :dt_nascimento, :endereco, :bairro, :telefone, :religiao, :responsavel,
    :dt_entrada, :estuda, :escola, :serie, atividade_ids: [])
  end


  def authorize
    unless current_user.admin?
      redirect_to root_path
      return
    end
  end

end