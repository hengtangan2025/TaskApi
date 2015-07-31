TaskApi::Engine.routes.draw do
  resources :tasks

  get 'sessions/new'

  resources :users
  root 'sessions#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
end