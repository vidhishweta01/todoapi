Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'sessions#login'
      post 'registeration', to: 'sessions#registeration'
      resources :todos do
        resources :items
      end
    end
  end
end
