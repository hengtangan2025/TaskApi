TaskApi::Engine.routes.draw do
  resources :tasks

  get 'sessions/new'

  resources :users
  post 'users/task'
end