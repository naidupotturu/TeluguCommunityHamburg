Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
    root 'home#index'  # Web homepage
    resources :users, only: [:index, :update, :edit, :show]

    # resources :films, only: [:index]
    # resources :payments, only: [:index]
    # get 'charts', to: 'films#dashboard'

    # namespace :api do
    #   resources :users, only: [:index, :update]
    #   resources :films, only: [:index]
    #   resources :payments, only: [:index]
    # end
    get '/about',       to: 'tabs#about'
    get '/about',       to: 'tabs#about'
    get '/membership',  to: 'tabs#membership'
    get '/gallery',     to: 'tabs#gallery'
    get '/events',      to: 'tabs#events'
    get '/calendar',    to: 'tabs#calendar'
    get '/contact',     to: 'tabs#contact'
    get '/leadership',  to: 'tabs#leadership'
    get '/login',       to: 'sessions#new'
    get '/login',       to: 'sessions#new'
    post '/login',      to: 'sessions#create'
    get '/signup',      to: 'users#new'


end
