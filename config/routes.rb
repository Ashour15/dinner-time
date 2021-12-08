Rails.application.routes.draw do
  get "/", to: "homepage#index"
  resources :recipes, only: [:index]
end
