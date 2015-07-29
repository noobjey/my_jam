Rails.application.routes.draw do

  get 'session/create'

  resources :songs
  resource :song

  resources :users, only: [:new, :create]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
