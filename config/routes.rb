Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  root 'home#index'
  resources :home, :ads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
