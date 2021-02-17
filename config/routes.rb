Rails.application.routes.draw do
  resources :books
  resources :reservations
  devise_for :models
  devise_for :users
  get 'home/index'
  resources :categories
  resources :authors
  resources :clients
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
