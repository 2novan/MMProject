Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # authenticated :user do
  #   root to: 'pages#home'
  # end
  # unauthenticated :user do
  #   root to: 'pages#welcome'
  # end

  get '/components' => 'pages#components', as: :components

  resources :game, only: [:edit, :create, :show]
  resources :user, only: [:edit, :show]
end
