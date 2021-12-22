Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :availabilities, only: %i[ index ]
  resources :reservations, only: %i[ index destroy ]
  get '/reservations/:availability', to: 'reservations#create', as: 'new_reservations'
end
