Rails.application.routes.draw do
  get 'stocks/index'
  get 'products/index'
  get 'stores/index'
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  root 'products#index'
end
