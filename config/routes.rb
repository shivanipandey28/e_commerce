Rails.application.routes.draw do
  devise_for :users, controllers: { application: 'application' }
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  root "products#index"
  resources :products
  resources :orders
  resources :cart_items,only: [:show, :new,:index]
  get '/seller_list', to: 'products#seller_list', as: 'seller_list'
  post '/add_item', to: 'cart_items#add_item', as: 'add_item'
  delete '/item_remove/:id', to: 'cart_items#item_remove', as: 'item_remove' 
end
