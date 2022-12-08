Rails.application.routes.draw do
  resources :reviews, only: [:create, :update, :destroy] 
  resources :buyers, only: [:index, :create, :show]
  resources :merchandizes
  resources :merchants, only: [:index, :show, :create] 
  post "/login", to: "sessions#create"
  get "/me", to: "buyers#show" 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
