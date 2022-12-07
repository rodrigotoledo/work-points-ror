Rails.application.routes.draw do
  namespace :api do
    resources :state_of_works
  end
  resources :state_of_works
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#index'
end
