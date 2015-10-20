Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users

  namespace :admin do
    root 'items#index'
    get 'attachments/index'
    get 'documents/index'

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

  resources :items, only: [:show]
  # resources :documents, only: [:show]

end
