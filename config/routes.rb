Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :users

  resources :sessions, only: [:create, :new, :destoy]
    get '/logout', to: 'sessions#destroy'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'

  resources :lists do 
    resources :tasks
  end
end
