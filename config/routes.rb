Rails.application.routes.draw do
  devise_for :users

  unauthenticated do
    root to: 'welcome#index', as: :unauthenticated_root
  end

  root "meals#index"

  resources :users, only: [:index]
    
  resources :meals do
    resources :orders
  end
end
