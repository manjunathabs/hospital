Rails.application.routes.draw do
  devise_for :users
  get 'login/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'login#index'

  post 'login/login'

  post 'login/create'

  resources :patients
  
end
