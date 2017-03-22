Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/register', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

  resources :users, except: [:index, :destroy] do
  	resources :trips, except: [:index] do
  		resources :accommodations, except: [:index]
  		resources :events, except: [:index] do
  			resources :photos, only: [:show, :new, :create, :destroy]
  		end
  		resources :flights, except: [:index]
  		resources :photos, only: [:show, :new, :create, :destroy]
  		resources :rental_cars, except: [:index]
  	end
  end

  root 'static#index'
end