ToobSteak::Application.routes.draw do
  resources :users, :shows
  resources :sessions, :only => [:new, :create, :destroy]
  
  #static pages
  get "static_pages/about"


  #users
  get "users/new"
  get "users/create"
  get "users/edit"
  get "users/update"
  get "users/destroy"
  get "users/show"
  
  #shows
  get "shows/new"

  #routes
  match '/newshow', :to => 'shows#new'
  match '/about',	:to => 'static_pages#about'
  match '/signup',  :to => 'users#new'
  match '/contact', :to => 'static_pages#contact'
  match '/help',    :to => 'static_pages#help'

  #/
  root :to => 'static_pages#home'

end
