Rails.application.routes.draw do
  devise_for :users
  
  resources :posts, only: [:index, :show, :new, :create, :edit]

  root 'posts#index'
end
