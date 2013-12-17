NewBillOyst::Application.routes.draw do
  devise_for :users, controllers: { invitations: 'users/invitations'}
  
  namespace :admin do
    resource :dashboard, only: [:show]
    resources :accounts
  end

  namespace :moderator do
    resources :accounts
  end


  get 'chat', to: 'chat#show', as: 'chat'

  resource :dashboard, only: [:show] 

  root to: 'welcome#index'
end
