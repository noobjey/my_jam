Rails.application.routes.draw do

  resources :songs
  resource :song

  resources :users, only: [:new]

end
