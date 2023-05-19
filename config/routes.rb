# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # GET /about
  get "about", to: "about#index", as: :about
  # GET /sign_up
  get "sign_up", to: "registrations#new"
  # POST /sign_up
  post "sign_up", to: "registrations#create"

  # GET /sign_in
  get "sign_in", to: "sessions#new"
  # POST /sign_in
  post "sign_in", to: "sessions#create"

  # DELETE /logout
  delete "logout", to: "sessions#destroy"
  # GET /
  root to: "main#index"
end
