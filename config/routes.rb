Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  
  get 'homes/about' => 'homes#about', as: 'about'
  
  resources :books, only: [:new, :index, :show, :destroy, :create, :edit]
  
  resources :users, only: [:show, :edit, :update]
  
end
