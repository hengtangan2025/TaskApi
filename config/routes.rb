TaskApi::Engine.routes.draw do
  resources :tasks

  get 'sessions/new'

  resources :users
  root 'users#index'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  post 'users/task'
end

Rails.application.routes.draw do
  mount TaskApi::Engine => '/', :as => 'aaa'
end