Crazytrip2::Application.routes.draw do

  root :to => 'pages#home'

  match '/about',   :to => 'pages#about'

  resources :users, :trips
  
  resources :places do
    resources :photos
  end

  match '/signup',  :to => 'users#new'
  
  resources :sessions, :only => [:new, :create, :destroy]
  
  resources :votes, :only => [:create, :destroy]
  resources :trip_points, :only => [:create, :destroy]
  
  match '/search',  :to => 'search#index'
  
  match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match '/trips/:id/guide', :to => 'trips#guide'
  
  match "*path" => redirect('/')
end
