Rails.application.routes.draw do
  root to: 'application#index'

  get '/session/login', to: 'session#login', as: 'login'
  post '/session', to: 'session#validate_credentials'

  get '/users/new', to: 'user#new', as: 'user_new'
  post '/users', to: 'user#create'
  
end
