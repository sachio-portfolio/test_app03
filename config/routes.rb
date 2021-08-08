Rails.application.routes.draw do
  get 'maps/index'
  resources :posts do
    collection do
      # get 'select_zone'
      # get 'select_divesite'
      # get 'set_divesite'
      # get 'edit_divesite'
    end
  end
  resources :locations
  root to: 'maps#index'
  resources :divesites
  devise_for :users
  resources :maps, only: [:index]
end
