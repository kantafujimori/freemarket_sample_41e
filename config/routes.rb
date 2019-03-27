Rails.application.routes.draw do
  root 'products#index'
  devise_for :users
  resources :users, only: [:show]
  get '/products/buy',to: 'products#buy_confirm'
  resources :products
end
