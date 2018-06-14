Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :planes do
    resources :rentals, except: :destroy
  end
  resources :rentals, only: :destroy

  get 'dashboard', to: 'dashboard#show'
end



# get 'planes', to: 'planes#index'
# get 'planes/id', to: 'planes#show'
# post 'planes/id', to: 'planes#create'
# get 'planes/new', to: 'planes#new'
# get 'planes/id/edit', to: 'planes#edit'
