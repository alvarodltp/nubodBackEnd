Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:create, :index]
resources :exercises

# post '/signup', to: 'auth#signup'

get '/me', to: 'users#show'

end
