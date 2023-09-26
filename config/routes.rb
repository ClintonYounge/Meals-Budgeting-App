Rails.application.routes.draw do
  devise_for :users

  unauthenticated do
    root to: 'welcome#index', as: :unauthenticated_root
  end

  root "meals#index"

  resources :users, only: [:index]
    
  resources :meals, only: [:index, :show, :new, :create] do
    resources :orders, only: [:index, :show, :new, :create]
  end
end
