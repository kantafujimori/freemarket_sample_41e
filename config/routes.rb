Rails.application.routes.draw do

  root 'products#index'
  devise_for :users
  resources :users, only: [:show]
  resources :products
  resources :sells do
    get 'shipping_method', on: :collection
    get 'category_middle', on: :collection
    get 'category_bottom', on: :collection
  end
  resources :buys
end
