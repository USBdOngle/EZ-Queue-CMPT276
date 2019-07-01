Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome' => 'pages#home'
  get 'join' => 'pages#join'
  get 'create' => 'pages#create'
  get 'loggedin' => 'pages#loggedin'
  #gives rest of program access to models
  resources :guests, :moderators, :rooms

end
