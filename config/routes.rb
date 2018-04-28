Rails.application.routes.draw do

  resources :deposits
  resources :order_details
  resources :orders
  resources :buyers
  resources :products
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'dashboard#index'
end
