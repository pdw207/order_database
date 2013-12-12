MujeresCambiaMail::Application.routes.draw do
  get '/my_details/basic_information', to: 'my_details#information', as: 'information'

  resources :registers
  resources :product_types
  resources :products
  get '/my_details/instructions', to: 'my_details#instructions', as: 'instructions'
  get '/orders/sales', to: 'orders#sales', as: 'sales'
  resources :my_details
  resources :designs
  resources :customers
  resources :orders
  get '/artists/:id/payments_by_month', to: 'artists#payments_by_month', as: 'payments_by_month'
  get '/artists/:id/payments', to: 'artists#payments', as: 'payments'
  resources :artists

  root :to => "sessions#new"
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
  get '/orders/packing_slip/:id', to: 'orders#packing_slip', as: 'packing_slip'


  resources :orders do
      get '/products/:id/edit', to: 'products#product_edit', as: 'product_edit'
  end
  
end
