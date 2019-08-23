Rails.application.routes.draw do

  resources :users do
    resources :listings, only: [:show, :index, :new]
  end
  devise_for :users
  resources :reports
  resources :responses
  resources :categories
  resources :listings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end
