Rails.application.routes.draw do
 
  get 'users/new'

 resources :articles
 resources :customers
 resources :companies

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
