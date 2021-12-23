Rails.application.routes.draw do
  get 'breaks/index'
  get "/organizations" => "organizations#index"
  resources :organizations
  # Users routes
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  # get "/users/new" => "users#new"
  # post "/users" => "users#create"
  
  # Sessions routes
  get "/login" => "sessions#login"
  post "/login" => "sessions#create"
  post "/logout" => "sessions#destroy"
  get "/logout" => "sessions#destroy"

end
