Rails.application.routes.draw do
  resources :favorites
  resources :follows
  resources :tweets
  devise_for :users
  root to: "home#index"
end
