Crazytrip::Application.routes.draw do
	root :to => "public#index"
	get "log_out" => "sessions#destroy", :as => "log_out"
	get "log_in" => "sessions#new", :as => "log_in"
	get "sign_up" => "users#new", :as => "sign_up"
	resources :UsersController
	resources :SessionsController
	resources :TripsController
	
 
  match ':controller(/:action(/:id(.:format)))'
end
