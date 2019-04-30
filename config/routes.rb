Rails.application.routes.draw do
  resources :users
  resources :categories, only: [:index, :show]
  resources :collections
  resources :items
  resources :sessions, only: [:new, :create]

  resources :users do
    resources :collections
  end

  resources :collections do
    resources :items
  end
end
