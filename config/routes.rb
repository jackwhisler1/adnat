Rails.application.routes.draw do
  get 'welcome', to: 'welcome#index'
  root to: 'welcome#index'
  
  resources :organizations
  # Users routes
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  get "/sign_up" => "users#new"
  post "/sign_up" => "users#create"

  # Sessions routes
  get "/sign_in" => "sessions#new"
  post "/sign_in" => "sessions#create"
  delete "/logout" => "sessions#destroy"

end
