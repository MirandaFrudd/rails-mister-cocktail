Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'doses/new'
  # get 'doses/create'

  resources :cocktails, only: [:index, :new, :show, :create]do
    resources :doses, only: [:new, :create, :destroy]
  end

  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktails/new', to: 'cocktails#new'
  # post '/cocktails', to: 'cocktails#create'
  # get '/cocktails/:id', to: 'cocktails#show', as: :cocktail
  # get '/cocktails/:id/doses/new', to: 'doses#new'
end
