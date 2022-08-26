Rails.application.routes.draw do
  get 'carts/show'
  get 'contacts/index'
  get 'testimonials/index'
  get 'services/index'
  get 'master_chefs/index'
  get 'menu/index'
  get 'about/index'
  resources :cakes
  get 'cakes/index'
  devise_for :users
  root 'homes#index'
  get 'set_carts' , to: 'orders#set_carts'
  post 'set_carts' , to: 'orders#set_carts'
  get 'checkout' , to: 'orders#checkout'
  scope module: 'orders' do
    resources :addresses
   end
  resources :orders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
