Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:new, :index, :show, :create, :destroy, :edit, :update] do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:edit, :show, :index, :update]
  root to: "homes#top"
  get 'home/about', to: 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
