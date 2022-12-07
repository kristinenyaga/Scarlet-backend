Rails.application.routes.draw do
  resources :articles
  resources :users
  get "/me", to: "users#show"
  post '/signup', to: 'users#create'
  delete "/logout", to: "sessions#destroy"
  post "/login", to: "sessions#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
