Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'censuses#index'

  resources :users
  resources :censuses, only: [:index, :show, :new, :create] do
    resources :opinions, only: [:index, :new, :create]
    resources :comments, only: [:index, :new, :create]
  end
end
