NewBillOyst::Application.routes.draw do
  devise_for :users, controllers: { invitations: 'users/invitations'}

  resources :users, only: [:show, :edit, :update] do
    resources :observations, controller: 'users/observations'
  end

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

  root to: 'welcome#index'
end
