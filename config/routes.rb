LynxShare::Application.routes.draw do
  resources :users
  resources :links
  resources :tags
  resources :relationships

  post '/user_search' => 'users#search'
  post '/link_search' => 'links#search'
  post '/tag_search' => 'tags#search'
  delete "/signout" => "sessions#destroy"
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  root 'sessions#new'
end
