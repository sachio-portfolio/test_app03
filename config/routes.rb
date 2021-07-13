Rails.application.routes.draw do
  resources :locations
  root to: 'locations#index'
  resources :divesites
  devise_for :users
end
