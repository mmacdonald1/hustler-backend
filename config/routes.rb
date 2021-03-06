Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :decks
  resources :cards

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/decks/:id/cards', to: 'cards#index'
end
