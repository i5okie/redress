Rails.application.routes.draw do
  namespace :admin do
  get 'attachments/index'
  end

  namespace :admin do
  get 'documents/index'
  end

  namespace :admin do
    root 'items#index'
    resources :categories
    resources :items
    resources :manufacturers
    resources :documents
    resources :attachments
    resources :itemattachments do
      get 'attachments'
    end
    resources :itemdocuments do
      get 'documents'
    end
  end

  resources :items
  resources :documents, only: [:show]
  # get 'categories/attachments'

  root to: 'visitors#index'
  devise_for :users
  # resources :items, only: [:index, :show] do
  # end
end
