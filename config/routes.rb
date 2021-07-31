Rails.application.routes.draw do
  resources :posts do
    collection do
      # get 'select_zone'
      # get 'select_divesite'
      # get 'set_divesite'
      # get 'edit_divesite'
    end
  end
  resources :locations
  root to: 'posts#index'
  resources :divesites
  devise_for :users
end
