Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'

  get 'pages/sobre'
  get 'pages/projetos'
  get 'pages/atividades'
  get 'pages/eventos'
  get 'admin/pessoas/promulher'

  # Admin main route
  get 'admin/', to: 'admin#index'

  #Admin Eventos
  get 'admin/eventos/proximos_eventos', to: 'admin/eventos#proximos_eventos'
  get 'admin/eventos/calendario', to: 'admin/eventos#calendario'

  # Namespace /admin em português --> eventos, pessoas, atividades, users e voluntários
  scope(path_names: {new: 'novo', edit: 'editar', show: 'mostrar', destroy: 'excluir'}) do
    resources :eventos, path: 'admin/eventos', module: :admin
    resources :pessoas, path: 'admin/pessoas', module: :admin
    resources :atividades, path: 'admin/atividades', module: :admin do
      resources :pessoas, only: [:new, :create, :destroy]
    end
    resources :users, path: 'admin/users', module: :admin
    resources :voluntarios, path: 'admin/voluntarios', module: :admin
  end
end
