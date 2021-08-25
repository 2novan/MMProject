Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  unauthenticated :user do
    root to: 'pages#welcome'
  end
  authenticated :user do
    root to: redirect("/home"), as: :authenticated_root
  end

  resources :game, only: [:edit, :create]
  resources :player, only: [:create, :edit, :show ]

end
