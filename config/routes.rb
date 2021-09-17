Rails.application.routes.draw do
  resources :cart_products, only: [:create, :destroy]
  resources :products, only: [:index]
  root to: "demo#index"
end
