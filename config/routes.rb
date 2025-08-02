Rails.application.routes.draw do
  get 'rooms/show'
  devise_for :users
   resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show]
  resources :tweets do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'users#index'
 
end
