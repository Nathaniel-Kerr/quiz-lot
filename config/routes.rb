Rails.application.routes.draw do

  get '/', to: 'sessions#welcome'
  root to: 'sessions#welcome'
  
  resources :users do
    resources :flashcards, only: [:show, :idex, :new]
  end
  get 'users/:id/user_flashcards' => 'user#user_flashcards'

  resources :flashcards
  resources :subjects

  resources :sessions
  get '/login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  delete "logout", to: 'sessions#destroy'

  get "/auth/:provider/callback" => 'sessions#omniauth'
  
end
