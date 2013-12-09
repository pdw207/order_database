MujeresCambiaMail::Application.routes.draw do

  resources :registers
  resources :product_types
  resources :products
  resources :my_details
  resources :designs
  resources :customers
  resources :orders
  
   get '/artists/:id/payments', to: 'artists#payments', as: 'payments'
  resources :artists

  root :to => "sessions#destroy"
  resources :buyers
  resources :users
  resources :sessions
  resources :sales
  resources :locations

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"

  get '/orders/closed', to: 'orders#closed', as: 'closed'
  get '/orders/print_label/:id', to: 'orders#print_label', as: 'print_label'
  get '/orders/print_exporta_facil/:id', to: 'orders#print_das', as: 'print_das'
  get '/orders/reconciliation/:id', to: 'orders#reconciliation', as: 'reconciliation'


  resources :orders do
      get '/products/:id/edit', to: 'products#product_edit', as: 'product_edit'
  end
  
end
