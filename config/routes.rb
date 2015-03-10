Rails.application.routes.draw do
  namespace :admin do
    root 'items#index'
    resources :categories
    resources :items, only: [:index, :new, :create, :destroy, :show, :edit]
    resources :manufacturers
  end

  resources :items
  # get 'categories/attachments'

  root to: 'visitors#index'
  devise_for :users
  # resources :items, only: [:index, :show] do
  # end
end
