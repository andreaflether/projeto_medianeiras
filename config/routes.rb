Rails.application.routes.draw do

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get 'pages/sobre'
  get 'pages/projetos'
  get 'pages/atividades'
  get 'pages/eventos'
  get 'pages/promulher'

  # Admin routes
  get 'admin/', to: 'admin#index'

  #Admin Eventos
  get 'admin/eventos/proximos_eventos', to: 'admin/eventos#proximos_eventos'
  get 'admin/eventos/calendario', to: 'admin/eventos#calendario'

  # namespace /admin em português --> eventos
  scope(path_names: {new: 'novo', edit: 'editar', show: 'mostrar', destroy: 'excluir'}) do
    resources :eventos, path: 'admin/eventos', module: :admin
  end

  # namespace /admin em português --> pessoas
  scope(path_names: {new: 'novo', edit: 'editar', show: 'mostrar', destroy: 'excluir'}) do
    resources :pessoas, path: 'admin/pessoas', module: :admin
  end

  # namespace /admin em português --> atividades
  scope(path_names: {new: 'novo', edit: 'editar', show: 'mostrar', destroy: 'excluir'}) do
    resources :atividades, path: 'admin/atividades', module: :admin
  end

  # namespace /admin em português --> users
  scope(path_names: {new: 'novo', edit: 'editar', show: 'mostrar', destroy: 'excluir'}) do
    resources :users, path: 'admin/users', module: :admin
  end

  # namespace /admin em português --> voluntários
  scope(path_names: {new: 'novo', edit: 'editar', show: 'mostrar', destroy: 'excluir'}) do
    resources :voluntarios, path: 'admin/voluntarios', module: :admin
  end

end
