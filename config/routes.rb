Rails.application.routes.draw do
  root "home#index"

  resources :bamboo, only: [:new, :create]
end
