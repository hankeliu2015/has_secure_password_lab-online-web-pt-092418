Rails.application.routes.draw do
  get 'sessions/new', to: 'sessions#new'

  post 'sessions/create', to: 'sessions#create'

  get 'users/new', to: 'users#new', as: 'new_users'

  post 'users/create', to: 'users#create', as: 'users'

  get 'users/:id/', to: 'users#show', as: 'user'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
