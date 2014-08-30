Rails.application.routes.draw do
  root to: 'application#index'

  get '/sessions/login', to: 'sessions#login', as: 'login'
  post '/sessions', to: 'sessions#validate_credentials'

  get '/users/new', to: 'user#new', as: 'user_new'
  post '/users', to: 'user#create'
  
end
