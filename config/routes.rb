Rails.application.routes.draw do
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  root 'main#index'
  namespace :api do
    namespace :v1 do
      post '/login', to: 'sessions#login'
      post 'registeration', to: 'sessions#registeration'
      post 'forgotPassword', to: 'sessions#forgotPassword'
      get 'users', to: 'sessions#users'
      resources :todos do
        resources :items
      end
    end
  end
end
