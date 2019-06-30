Rails.application.routes.draw do
  get '/createroom' => 'rooms#new'
  get '/createroom' => 'rooms#create'
  resources :guests, :moderators, :rooms
  
end
