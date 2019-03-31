Rails.application.routes.draw do

  root 'products#index'
  devise_for :users
  resources :users, only: [:show]
  resources :products do
    get :buy_confirm, on: :collection, as: :buy
  end
end
