Rails.application.routes.draw do
  devise_for :users
  get 'pages/about'
  get 'pages/contact'
  get 'pages/home'
  root to: 'pages#home'

  resources :listings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
