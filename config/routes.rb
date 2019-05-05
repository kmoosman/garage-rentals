Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
  get 'events/:id/garages' => 'garages#index'
  get 'events/:id/garages/rent/:id' => 'garages#rent'
  get '/events/new' => 'events#new'
  get '/events' => 'events#index'
  resources :events
  
  resources :users, only: [:new, :show, :create, :edit, :update]
  
end
