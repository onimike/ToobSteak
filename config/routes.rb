ToobSteak::Application.routes.draw do
  resources :users, :shows
  resources :sessions, :only => [:new, :create, :destroy]

  get "users/create"
  get "users/edit"
  get "users/update"
  get "users/destroy"

  get "users/show"
  get "shows/new"
  get "users/new"
  get "static_pages/about"

  resources :users, :shows

  match '/newshow', :to => 'shows#new'

  match '/about',	:to => 'static_pages#about'
  match '/signup',  :to => 'users#new'

  root :to => 'static_pages#home'

end
