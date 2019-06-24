Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :categories, only: [:index, :show]
    resources :collections
    resources :items
    # resources :sessions, only: [:new, :create, :destory]
    resources :images

    resources :users do
      resources :collections
    end

    resources :collections do
      resources :items
    end
    # get '/current_user' => 'users#show'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
  end

end
