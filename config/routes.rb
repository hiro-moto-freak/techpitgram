Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' }
  root to: 'posts#index'
  resources :users, only: [:show]
  resources :posts, only: [:new, :create, :index] do
    resources :photos, only: [:create]
  end
end
