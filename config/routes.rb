Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

      resources :users, only: [:create, :index]
      resources :adventures, only: [:create, :show, :index]
      resources :donations, only: [:index]

      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
end