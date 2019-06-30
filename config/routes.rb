Rails.application.routes.draw do
  get 'welcome' => 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #gives rest of program access to models
  resources :guests, :moderators, :rooms

end
