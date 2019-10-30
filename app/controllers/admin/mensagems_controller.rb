class Admin::MensagemsController < AdminController
  layout 'menu_admin'

  def index
    @mensagens = Mensagem.all
  end

  def new
    @mensagem = Mensagem.new
  end

  def create
    @mensagem = Mensagem.new(mensagem_params)

    if @mensagem.save
      redirect_to @mensagem, notice: 'Mensagem criado com sucesso!'
    else
      render 'new'
    end
  end

  def show
    @mensagem = Mensagem.find(params[:id])
  end

  def update
    @mensagem = Mensagem.find(params[:id])

    if @mensagem.update(mensagem_params)
      # redirect_to @mensagem
      redirect_to @mensagem, notice: 'Mensagem atualizada com sucesso.'
    else
      render 'edit'
    end
  end

  def edit
    @mensagem = Mensagem.find(params[:id])
  end

  def destroy
    @mensagem = Mensagem.find(params[:id])
    @mensagem.destroy

    redirect_to mensagems_path, notice: 'Mensagem apagada com sucesso.'
  end

  private

  def mensagem_params
    params.require(:mensagem).permit(:nome, :email, :assunto, :numero, :mensagem)
  end
end
