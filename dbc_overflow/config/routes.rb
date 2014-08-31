Rails.application.routes.draw do
  root to: 'application#index'

  get '/sessions/login', to: 'sessions#login', as: 'login'
  post '/sessions', to: 'sessions#validate_credentials'
  delete '/sessions', to: 'sessions#logout'

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
