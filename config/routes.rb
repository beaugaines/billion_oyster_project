NewBillOyst::Application.routes.draw do
  devise_for :users
  
  namespace :admin do
    resource :dashboard, only: [:show]
  end

  resource :dashboard, only: [:show] 

  root to: 'welcome#index'
end
