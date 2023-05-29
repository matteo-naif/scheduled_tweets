# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # GET /about
  get "about", to: "about#index", as: :about

  # GET /password
  get "password", to: "passwords#edit", as: :edit_password
  # PATCH /password
  patch "password", to: "passwords#update"

  # GET /password/reset
  get "password/reset", to: "password_resets#new"
  # POST /password/reset
  post "password/reset", to: "password_resets#create"

  # GET /password/reset/edit
  get "password/reset/edit", to: "password_resets#edit"
  # PATCH /password/reset/edit
  patch "password/reset/edit", to: "password_resets#update"

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
