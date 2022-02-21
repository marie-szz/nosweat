Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
