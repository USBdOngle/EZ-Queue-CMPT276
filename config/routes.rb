Rails.application.routes.draw do
  root 'pages#home'
  get '/createroom' => 'rooms#new'
  get '/createroom' => 'rooms#create'
  resources :guests, :moderators, :rooms
  
end
