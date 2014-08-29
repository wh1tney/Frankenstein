Rails.application.routes.draw do
  root to: 'home#index'

  get  '/users/new' to: 'user#new' as: 'user_new'
  post '/users' to: 'user#create'

end
