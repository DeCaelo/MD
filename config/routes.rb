Rails.application.routes.draw do
  devise_for :users
  root 'home#show'
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create]

  get "search" => "search#show", as: :search
  get "search/users" => "search#users", as: :search_users
end
