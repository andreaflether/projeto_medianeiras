Rails.application.routes.draw do
  get 'atividades/new'
  get 'atividades/create'
  get 'atividades/update'
  get 'atividades/edit'
  get 'atividades/destroy'
  get 'atividades/index'
  get 'atividades/show'

  get 'pessoas/new'
  get 'pessoas/create'
  get 'pessoas/update'
  get 'pessoas/edit'
  get 'pessoas/destroy'
  get 'pessoas/index'
  get 'pessoas/show'

  scope(path_names: {new: 'novo', edit: 'editar', show: 'mostrar', destroy: 'excluir', edit: 'editar'}) do
    resources :pessoas, path: 'admin/pessoas', module: :admin
  end

  scope(path_names: {new: 'novo', edit: 'editar', show: 'mostrar', destroy: 'excluir', edit: 'editar'}) do
    resources :atividades, path: 'admin/atividades', module: :admin
  end

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
  get 'admin/', to: 'admin#index'

  #Admin Eventos
  get 'admin/eventos/listagem', to: 'admin/eventos#listagem'
  get 'admin/eventos/calendario', to: 'admin/eventos#calendario'

  resources :users
  get 'admin/users'

  scope(path_names: {new: 'novo', edit: 'editar', show: 'mostrar', destroy: 'excluir'}) do
    resources :eventos, path: 'admin/eventos', module: :admin
  end

end
