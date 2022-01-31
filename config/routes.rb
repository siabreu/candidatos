Rails.application.routes.draw do
  resources :prospects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  resources :prospects

  root "prospects#index"
end
