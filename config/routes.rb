Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :planes do
    resources :rentals, except: :destroy
  end
  resources :rentals, only: :destroy

  get 'dashboard', to: 'dashboard#show'
end
