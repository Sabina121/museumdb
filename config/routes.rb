Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'welcome/index'

  
  resources :artifacts do
    member do
      delete :delete_image_attachment
    end
  end
end
