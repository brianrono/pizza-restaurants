Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :destroy]
  resources :pizzas, only: [:index, :show, :create]
  resources :restaurant_pizzas, only: [:create]
end
