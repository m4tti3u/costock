Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :transactions, only: [:index]
  resources :nfts, only: [:show, :index]
  resources :asks, only: [:update]
  resources :bids, only: [:update]
  resources :collectibles, only: [:index, :show, :new, :create] do
    resources :bids, only: [:create]
    resources :asks, only: [:create]
  end

  namespace :my do
    resources :transactions, only: [:index, :show]
  end
end
