Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: 'pages#home'
  end
  unauthenticated :user do
    root to: 'pages#welcome'
  end

  get '/components' => 'pages#components', as: :components

  resources :game, only: [:edit, :create]
  resources :player, only: [:create, :edit, :show ]

end
