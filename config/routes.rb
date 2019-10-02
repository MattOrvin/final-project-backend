Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events, only: [:create, :index, :show]
  resources :users, only: [:create, :show]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/users/:id/events', to: 'users#events'
  # get '/current_user' to: 'auth#current_user' 
end
