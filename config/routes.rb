ToobSteak::Application.routes.draw do
  resources :users, :shows
  resources :sessions, :only => [:new, :create, :destroy]

  #routes
  match '/newshow', :to => 'shows#new'
  match '/about',	:to => 'static_pages#about'
  match '/signup',  :to => 'users#new'
  match '/contact', :to => 'static_pages#contact'
  match '/help',    :to => 'static_pages#help'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  #/
  root :to => 'static_pages#home'

end
