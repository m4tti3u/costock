Rails.application.routes.draw do
  get 'collectibles/index'
  get 'collectibles/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :transactions, only: [:index]
  resources :collectibles, only: [:index, :show]
  resources :asks, only: [:update]
  resources :bids, only: [:update]
  resources :nfts, only: [:show, :index]

  namespace :my do
    resources :nfts, only: [], shallow: true do
      resources :bids
      resources :asks
    end
    resources :transactions, only: [:index, :show]
  end
end
