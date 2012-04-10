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
<<<<<<< HEAD

  resources :users, :shows

=======
  
>>>>>>> 1fc62d1ad57cbb7ba6c278dd328eb42497706389
  match '/newshow', :to => 'shows#new'

  root :to => 'pages#home'
<<<<<<< HEAD
=======
  
>>>>>>> 1fc62d1ad57cbb7ba6c278dd328eb42497706389

  #named routes
  match '/about',	:to => 'static_pages#about'
  match '/signup',  :to => 'users#new'

end
