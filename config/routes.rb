Rails.application.routes.draw do
  get 'shifts/edit'
  get 'shifts/update'
  get 'shifts/destroy'
  get 'welcome', to: 'welcome#index'
  root to: 'welcome#index'
  
  # organizations routes
  resources :organizations, only: [:index, :show, :edit, :update, :create, :destroy]
  post 'organizations/:id' => 'shifts#create'

  # Users routes
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  get "/sign_up" => "users#new"
  post "/sign_up" => "users#create"

  # Sessions routes
  get "/sign_in" => "sessions#new"
  post "/sign_in" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  get "/logout" => "sessions#destroy"

  # UserOrgs routes
  post "/user_orgs" => "user_orgs#create"

  # Shifts routes
  resources :shifts

end
