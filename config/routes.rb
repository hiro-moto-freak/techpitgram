Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' }
  root to: 'pages#home'
  resources :users, only: [:show]
  resources :posts, only: [:new, :create] do
    resources :photos, only: [:create]
  end
end
