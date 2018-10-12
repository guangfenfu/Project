Rails.application.routes.draw do
  get '/' => 'home#index'
  get '/about' => 'home#about'
  get 'stocks/index'
  # get 'products' => 'products#index'
  get 'stores' => 'stores#index'
  get 'colors/index'
  get 'currencies/index'
  get 'categories/index'
  get 'brands/index'
  get 'taxes/index'
  get 'provinces/index'
  get 'addresses/index'
  get 'roles/index'
  get 'users/index'
  get 'user/index'

  get 'products', to: 'products#index', as: 'products'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products

  get 'products/:id', to: 'products#show',  as: 'product', id: /\d+/

  root to: 'home#index'
end
