Rails.application.routes.draw do
  root 'homes#top'
  get "/home/about" => "homes#about"
  
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end
  
  devise_for :users
  
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
end