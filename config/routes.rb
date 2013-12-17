NewBillOyst::Application.routes.draw do
  devise_for :users, controllers: { invitations: 'users/invitations'}
  
  namespace :admin do
    resource :dashboard, only: [:show]
  end

  namespace :moderators do
    resources :accounts
  end

  resource :dashboard, only: [:show] 

  root to: 'welcome#index'
end
