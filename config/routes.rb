Rails.application.routes.draw do
  devise_for :users, controllers: { application: 'application' }
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  root "products#index"
  resources :products
  resources :orders
  resources :cart_items
  get '/seller_list', to: 'products#seller_list', as: 'seller_list'
  get '/add_cart', to: 'cart_items#create', as: 'add_cart'

end
