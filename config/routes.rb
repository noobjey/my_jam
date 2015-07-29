Rails.application.routes.draw do

  get 'session/create'

  resources :songs
  resource :song

  resources :users, only: [:new, :create]

  get '/login', to: 'sessions#new'
end
