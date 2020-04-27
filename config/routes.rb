Rails.application.routes.draw do
  get 'welcome/index'

  resources :artifacts
  
  root 'welcome#index'
end
