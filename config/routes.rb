Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/register', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  resources :users
  resources :trips
  resources :trip_dates
  resources :events
  resources :accommodations
  resources :flights
  resources :rental_cars
  
  root 'static#index'
end