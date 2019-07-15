Rails.application.routes.draw do
  root 'pages#home'
  get '/createroom' => 'rooms#new'
  post '/createroom' => 'rooms#create'

  get 'join' => 'pages#join'
  get 'help' => 'pages#help'
  get 'home' => 'pages#home'
  
  get 'join' => 'guests#new'
  post 'join' => 'guests#create'

  get 'login' => 'moderators#new'
  post 'login' => 'moderators#create'

  get 'guest' => 'queue#guestQueue'
  get 'mod' => 'queue#modQueue'

  resources :guests, :moderators, :rooms

end
