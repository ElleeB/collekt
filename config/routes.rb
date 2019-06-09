Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :categories, only: [:index, :show]
    resources :collections
    resources :items
    resources :sessions, only: [:new, :create]
    resources :images

    resources :users do
      resources :collections
    end

    resources :collections do
      resources :items
    end
    get '/current_user' => 'users#show'
  end

end
