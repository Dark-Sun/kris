# -*- encoding : utf-8 -*-
Kris::Application.routes.draw do


  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"

  get "login" => "sessions#new", :as => "log_in"
  get "logout" => "sessions#destroy", :as => "log_out"

  root :to => 'pages#main'

  resources :adverts, :users, :admins, :sessions, :portfolios
  resources :articles

  get "about" => "pages#about", :as => "about"
  get "contacts" => "pages#contacts", :as => "contacts"
  get "services" => "pages#services", :as => "services"

  match "send_email" => "pages#send_email", :as => "send_email"

  get "index.php" => redirect("www.ra-kris.com")
end
