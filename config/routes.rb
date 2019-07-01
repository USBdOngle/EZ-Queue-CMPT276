Rails.application.routes.draw do
  root 'pages#home'
  get '/createroom' => 'rooms#new'
  post '/createroom' => 'rooms#create'

  get 'join' => 'pages#join'
  get 'create' => 'pages#create'
  get 'loggedin' => 'pages#loggedin'
  resources :guests, :moderators, :rooms
  
end
