Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/active_quarters/nuke", to: "active_quarters#destroy", as: "delete_filter"
  resources :courses
  resources :active_quarters, :except=>[:destroy]
  resources :students
  resources :courses do 
    resources :students
  end
  
  # Defines the root path route ("/")
  root "courses#index"
end
