Rails.application.routes.draw do
  root to: 'application#index'

  get '/session/login', to: 'session#login', as: 'login'
  post '/session', to: 'session#validate_credentials'
  delete '/session', to: 'session#logout'

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  
  get '/questions', to: 'questions#index'
  get '/questions/new', to: 'questions#new'
  post '/questions', to: 'questions#create'
  get '/questions/:id', to: 'questions#show'

  get '/answers', to: 'answers#index'
  get '/answers/new', to: 'answers#new'
  post '/answers', to: 'answers#create'
end
