Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  devise_for :users
  resources :users do
    collection do
      get :signup
    end
  end
  resources :products do
    get :buy_confirm, on: :collection, as: :buy
  end
end
