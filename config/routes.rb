Rails.application.routes.draw do
  root 'pages#home'
  get '/createroom' => 'rooms#new'
  post '/createroom' => 'rooms#create'

  get 'join' => 'pages#join'
  get 'help' => 'pages#help'
  get 'guestlogin' => 'pages#guestlogin'
  get 'modlogin' => 'pages#modlogin'
  get 'home' => 'pages#home'
  post 'join' => 'guests#create'
  post 'join' => 'moderators#create'
  resources :guests, :moderators, :rooms

end
