ToobSteak::Application.routes.draw do
  get "users/show"
  get "shows/new"
  get "users/new"
  get "static_pages/about"
  
  resources :users, :shows
  
  match '/newshow', :to => 'shows#new'
  
  root :to => 'pages#home'
  
end
