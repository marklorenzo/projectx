Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :member
  resources :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'users#login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
