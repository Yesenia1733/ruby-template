Rails.application.routes.draw do
  resources :posts
  root to: 'home#index'
  get 'pages/index'
  devise_for :users 
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      #root 'devise/sessions#new', as: :unauthenticated_root
      root 'home#index', as: :unauthenticated_root
    end
  end
  namespace :admin do
    get '/', to: 'home#index'
  end
end
