Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get 'pages/sobre'
  get 'pages/cursos'
  get 'pages/eventos'

  # Admin routes
  get 'admin/teste'

  #Admin Eventos
  # get 'admin/eventos/criar'
  # get 'admin/eventos/editar'
  # get 'admin/eventos/excluir'
  # get 'admin/eventos/exibir'
  # get 'admin/eventos/novo'

  scope(path_names: {new: 'novo', edit: 'editar', create: 'criar', delete: 'excluir'}) do
    resources :eventos, path: 'admin/eventos', module: :admin
  end
end
