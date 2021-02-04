Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'doses/new'
  # get 'doses/create'
root to: 'cocktails#index'
resources :cocktails, except: :index
  resources :cocktails, only: [:index, :new, :show, :create]do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
