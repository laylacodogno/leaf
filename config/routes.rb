Rails.application.routes.draw do

  resources :recipes
  devise_for :users
  resources :categories

  resources :ingredients
  resources :users

  get 'search_by_categories' => 'home#search_by_categories', as: :search_by_categories
  get 'search_by_users' => 'home#search_by_users', as: :search_by_users

  root :to => "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
