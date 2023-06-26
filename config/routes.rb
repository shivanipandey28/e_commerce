Rails.application.routes.draw do
  devise_for :users, controllers: { application: 'application' }
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  root "products#index"
  resources :products
  resources :orders
end

