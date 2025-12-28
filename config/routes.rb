Rails.application.routes.draw do
  root "home#index"

  get  "home/new",    to: "home#new"
  post "home/create", to: "home#create"
end
