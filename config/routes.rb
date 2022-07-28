Rails.application.routes.draw do
  devise_for :staffs 
  #devise_scope :staff do
    #root to: "devise/sessions#new"
  #end 
  root to:'homes#index'
  resources :packages, only: [:index, :new, :create, :show]
end
