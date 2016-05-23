Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'censuses#index'

  resources :users, only: [:index, :show]
  resources :censuses, only: [:index, :show, :new, :create] do
    resources :opinions, only: [:index, :new, :create]
    resources :comments, only: [:index, :new, :create]
  end
end
