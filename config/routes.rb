Rails.application.routes.draw do
  root 'main#index'
  resources :articles, only: [:new, :show, :create]
end