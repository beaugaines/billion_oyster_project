NewBillOyst::Application.routes.draw do
  devise_for :users, controllers: { invitations: 'users/invitations'}
  
  namespace :admin do
    resource :dashboard, only: [:show]
    resources :accounts
  end

  namespace :moderator do
    resources :accounts
  end

  resources :posts
  mount Attachinary::Engine => '/attachinary'

  get 'chat', to: 'chat#show', as: 'chat'

  resource :dashboard, only: [:show] 

  authenticated :user do
    root to: 'dashboard#show', as: :authenticated_root
  end

  root to: 'welcome#index'
end
