Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
  # get 'events/:id/garages' => 'garages#index'
  post '/login' => 'users#login', as: :login
  get 'events/:id/garages/:id/rent' => 'rentals#new'
  # get '/events/new' => 'events#new'
  # get '/events' => 'events#index'
  resources :events do 
    resources :garages do 
      resources :rentals
    end
  end
  
  resources :users, only: [:new, :show, :create, :edit, :update]
  
end
