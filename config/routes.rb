Rails.application.routes.draw do

  root "listings#index"

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :reports
  resources :responses
  resources :user
  resources :categories
  resources :listings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end
