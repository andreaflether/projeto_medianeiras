Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get 'pages/sobre'
  get 'pages/atividades'
  get 'pages/aulas'
  get 'pages/eventos'
  get 'pages/promulher'

  # Admin routes
  get 'admin/teste'

  #Admin Eventos
  # get 'admin/eventos/criar'
  # get 'admin/eventos/editar'
  # get 'admin/eventos/excluir'
  # get 'admin/eventos/exibir'
  # get 'admin/eventos/novo'
  get 'admin/eventos/listagem', to: 'admin/eventos#listagem'
  get 'admin/eventos/calendario', to: 'admin/eventos#calendario'

  
  resources :users
  get 'admin/users'



  scope(path_names: {new: 'novo', edit: 'editar', show: 'mostrar', destroy: 'excluir'}) do
    resources :eventos, path: 'admin/eventos', module: :admin
  end

end
