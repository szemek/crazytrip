Crazytrip2::Application.routes.draw do

	root :to => 'pages#home'

  match '/about',   :to => 'pages#about'

	resources :users, :trips, :places

  match '/signup',  :to => 'users#new'
    
  resources :sessions, :only => [:new, :create, :destroy]
  
  match '/search',  :to => 'search#index'
  
  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  
end
