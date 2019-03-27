Rails.application.routes.draw do
  root 'products#index'
  devise_for :users
  resources :users, only: [:show]
  resources :products
  get '/buy',to: 'products#buy'
end
