Crazytrip::Application.routes.draw do

  root :to => 'pages#home'

  get '/about',   :to => 'pages#about'

  resources :users, :trips

  resources :places do
    resources :photos
  end

  get '/signup',  :to => 'users#new'

  resources :sessions, :only => [:new, :create, :destroy]

  resources :votes, :only => [:create, :destroy]
  resources :trip_points, :only => [:create, :destroy]

  get '/search',  :to => 'search#index'

  get '/signup',  :to => 'users#new'
  get '/signin',  :to => 'sessions#new'
  delete '/signout', :to => 'sessions#destroy'
  get '/trips/:id/guide', :to => 'trips#guide'

  get "*path" => redirect('/')
end
