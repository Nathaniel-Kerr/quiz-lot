Rails.application.routes.draw do

  get '/', to: 'sessions#welcome'
  root to: 'sessions#welcome'
  
  resources :flashcards
  resources :users

  resources :sessions
  get '/login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  delete "logout", to: 'sessions#destroy'

  get "/auth/:provider/callback" => 'sessions#omniauth'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
