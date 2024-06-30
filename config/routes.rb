  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

  # GET /about
  get "about", to: "about#index"

  get "logger", to: "logger#index"

  get "/", to: "main#index"

end