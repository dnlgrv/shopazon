Rails.application.routes.draw do
  resources :cart_products, only: [:create, :destroy]
  resources :products, only: [:index, :show]
  root to: "demo#index"
end
