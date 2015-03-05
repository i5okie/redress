Rails.application.routes.draw do
  namespace :admin do
    root 'base#index'
    resources :categories
  end

  get 'categories/attachments'

  root to: 'visitors#index'
  devise_for :users

  resources :items, only: [:index, :show] do

  end
end
