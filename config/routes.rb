Rails.application.routes.draw do
  namespace :admin do
    root 'base#index'
    resources :categories
    resources :items
    resources :manufacturers
  end

  resources :items
  # get 'categories/attachments'

  root to: 'visitors#index'
  devise_for :users
  # resources :items, only: [:index, :show] do
  # end
end
