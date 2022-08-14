Rails.application.routes.draw do
  devise_for :staffs 
  root to:'packages#index'
  resources :records, only: [:create]
  resources :packages 
end
