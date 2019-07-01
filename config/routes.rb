Rails.application.routes.draw do
  root 'pages#home'
  get '/createroom' => 'rooms#new'
  post '/createroom' => 'rooms#create'

  get 'join' => 'pages#join'
  get 'loggedin' => 'pages#loggedin'
  get 'home' => 'pages#home'
  resources :guests, :moderators, :rooms

end
