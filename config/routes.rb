Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  root to: "demo#index"
end
