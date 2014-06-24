CarPool::Application.routes.draw do
  get 'login', to: "sessions#new", as: "login"
  get 'signup', to: "users#new", as: "signup"
  get 'logout', to: "sessions#destroy", as: "logout"


  resources :trips


  resources :users
  resources :sessions
  root :to => 'trips#index'


end
