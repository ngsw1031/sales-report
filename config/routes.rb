Rails.application.routes.draw do
  devise_for :users
  root "teams#index"
  resources :users, only: [:edit, :update]
  resources :teams, only: [:index, :show, :new, :create, :edit, :update]
  resources :reports, only: [:new, :create, :edit]
  
end
