Rails.application.routes.draw do
  devise_for :users
  get "/users/signup" => "users#signup"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
end
