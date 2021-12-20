Rails.application.routes.draw do
  get 'breaks/index'
  # get "/organizations" => "organizations#index"
  resources :organizations

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

end
