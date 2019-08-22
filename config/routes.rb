Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get '/login', to: 'auth#new'
  post '/login' , to: 'auth#create'
  delete '/logout', to: 'auth#destroy'

  get '/users/:id/favorites', to: 'users#user_favorites', as: :user_favorites
  get '/users/:id/itineraries', to: 'users#user_itineraries', as: :user_itineraries
  

  resources :main, only: [:index]

  resources :destinations, only: [:index, :show]

  resources :itineraries
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]

end


