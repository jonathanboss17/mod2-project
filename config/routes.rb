Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: 'auth#new'
  post '/login', to: 'auth#create'
  delete '/login', to: 'auth#destroy'

  resources :main, only: [:index]
  resources :destinations, :itineraries, :users

end
