MujeresCambiaMail::Application.routes.draw do

root :to => "sessions#new"
resources :buyers
resources :users
resources :sessions
resources :sales
get "log_out" => "sessions#destroy", :as => "log_out"
get "log_in" => "sessions#new", :as => "log_in"


  
end
