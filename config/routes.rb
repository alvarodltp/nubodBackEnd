Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:create, :index]
resources :exercises
resources :workouts, only: [:index, :create]

# post '/signup', to: 'auth#signup'
post '/login', to: 'auth#login'
get '/profile', to: 'users#show'
patch '/user-update', to: 'users#update'

end
