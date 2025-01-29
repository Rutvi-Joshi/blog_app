Rails.application.routes.draw do
  devise_for :users

  # Redirect root path based on authentication
  authenticated :user do
    root 'posts#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end

  resources :posts do
    resources :comments, only: [:create, :show]
  end

  resources :users, only: [:show, :edit, :update]
end
