Rails.application.routes.draw do
  devise_for :staffs 
  devise_scope :staff do
    root to: "devise/sessions#new"
  end 
end
