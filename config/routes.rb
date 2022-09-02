Rails.application.routes.draw do
  get 'contacts/index'
  get 'testimonials/index'
  get 'services/index'
  get 'master_chefs/index'
  get 'menu/index'
  get 'about/index'
  resources :cakes
  devise_for :users
  root 'homes#index'
  get 'cart' , to: 'orders#cart'
  get 'checkout' , to: 'orders#checkout'
  resources :orders
  resources :addresses
  resources :line_items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
