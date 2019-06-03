Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#welcome'
  
  get '/signin' => 'users#signin', as: :signin
  post '/login' => 'users#login', as: :login
  get '/logout' => 'users#logout', as: :logout
  get '/signup' => 'users#new', as: :new
  get 'events/:id/garages/:id/rent' => 'rentals#new'
  post 'events/:id/garages/:id/rentals/new' => 'rentals#create'
  get 'events/select' => 'events#select'

  get 'auth/:provider/callback', to: 'users#auth'
  get 'auth/failure', to: redirect('/')

  resources :events do 
    resources :garages do 
      resources :rentals
    end
  end

  # get rid of if else in the vie w/helper methods 
  # get rid of tripple nesting
  # shallow nesting
  
  resources :users, only: [:new, :show, :create, :edit, :update]
  
end
