Rails.application.routes.draw do


  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }


  root "application#home"

  resources :reports
  resources :responses
  resources :user
  resources :categories
  resources :listings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end
