Rails.application.routes.draw do

  resources :recipes
  devise_for :users
  resources :categories

  resources :ingredients
  resources :users

  get 'search' => 'home#search', as: :search

  root :to => "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
