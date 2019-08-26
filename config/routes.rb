Rails.application.routes.draw do
  default_url_options :host => "localhost:3000"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api  do
    namespace :v1, defaults: {format: :json} do

    resources :adventures, only: [:create, :show, :index, :update]
      resources :users, only: [:create, :index]
      resources :donations, only: [:index, :show, :create]

      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end

end
