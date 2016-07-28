Rails.application.routes.draw do
  devise_for :users
  
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
